require_relative("../db/sql_runner.rb")

class Type

  attr_reader :id
  attr_accessor :name, :category_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @category_id = options['category_id'].to_i
  end


  def save()
    sql="INSERT INTO types (name, category_id) VALUES ($1, $2) RETURNING id"
    values=[@name, @category_id]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end



  def update()
    sql="UPDATE types SET (name, category_id) = ($1, $2) WHERE id=$3"
    values=[@name, @category_id, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql="DELETE FROM types WHERE id = $1"
    values=[@id]
    SqlRunner.run(sql,values)
  end

  # return the number of items this type has assigned to it
    def item_count()
      sql = "SELECT COUNT(id) AS num FROM items WHERE type_id = $1"
      values=[id]
      return SqlRunner.run(sql,values).first['num'].to_i
    end

    # return the category object associated
      def category()
        sql = "SELECT * FROM categories WHERE id = $1"
        values=[category_id]
        found = SqlRunner.run(sql,values).first
        return Category.new(found)
      end

      def usable_by()
        sql = "SELECT cc.*
               FROM cclass_type_rel cr
               INNER JOIN character_classes cc
               ON cr.cclass_id = cc.id
               WHERE cr.type_id = $1"
        values=[id]
        found = SqlRunner.run(sql,values)
        result = found.map { |type| C_Class.new( type ) }
        return result
      end

  #return an object given the name and category
    def self.find_by_nc(name, category)
      cid = Category.find_by_name(category).id
      sql="SELECT * FROM types WHERE name=$1 AND category_id=$2 LIMIT 1"
      values=[name, cid]
      found = SqlRunner.run(sql,values).first
      return Type.new(found)
    end

    def self.find(id)
      sql = "SELECT * FROM types WHERE id = $1"
      values=[id]
      found = SqlRunner.run(sql,values).first
      return Type.new(found)
    end

    def self.all()
      sql = "SELECT * FROM types"
      types = SqlRunner.run( sql )
      result = types.map { |type| Type.new( type ) }
      return result
    end

  def self.delete_all()
    sql="DELETE FROM types"
    SqlRunner.run(sql)
  end

end
