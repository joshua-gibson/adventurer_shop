require_relative("../db/sql_runner.rb")

class Type

  attr_reader :id
  attr_accessor :name, :category, :usable_by

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @category = options['category']
    @usable_by = options['usable_by']
  end


  def save()
    sql="INSERT INTO types (name, category, usable_by) VALUES ($1, $2, $3) RETURNING id"
    values=[@name, @category, @usable_by]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end



  def update()
    sql="UPDATE types SET (name, category, usable_by) = ($1, $2, $3) WHERE id=$4"
    values=[@name, @category, @usable_by, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql="DELETE FROM types WHERE id = $1"
    values=[@id]
    SqlRunner.run(sql,values)
  end

  #return an object given the name and category
    def self.find_by_nc(name, category)
      sql="SELECT * FROM types WHERE name=$1 AND category=$2 LIMIT 1"
      values=[name, category]
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
