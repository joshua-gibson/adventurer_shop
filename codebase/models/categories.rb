require_relative("../db/sql_runner.rb")

class Category

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end


  def save()
    sql="INSERT INTO categories (name) VALUES ($1) RETURNING id"
    values=[@name]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end



  def update()
    sql="UPDATE categories SET (name) = ($1) WHERE id=$2"
    values=[@name, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql="DELETE FROM categories WHERE id = $1"
    values=[@id]
    SqlRunner.run(sql,values)
  end

# return the number of items this category has assigned to it
  def item_count()
    sql = "SELECT COUNT(id) AS num FROM items WHERE category_id = $1"
    values=[id]
    return SqlRunner.run(sql,values).first['num'].to_i
  end

    def self.find(id)
      sql = "SELECT * FROM categories WHERE id = $1"
      values=[id]
      found = SqlRunner.run(sql,values).first
      return Category.new(found)
    end

  #return an object given the name and category_id
    def self.find_by_name(name)
      sql="SELECT * FROM categories WHERE name=$1 LIMIT 1"
      values=[name]
      found = SqlRunner.run(sql,values).first
      return Category.new(found)
    end

    def self.all()
      sql = "SELECT * FROM categories"
      categories = SqlRunner.run( sql )
      result = categories.map { |category| Category.new( category ) }
      return result
    end

  def self.delete_all()
    sql="DELETE FROM categories"
    SqlRunner.run(sql)
  end

end
