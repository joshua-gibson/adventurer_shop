require_relative("../db/sql_runner.rb")

class C_Class

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end


  def save()
    sql="INSERT INTO character_classes (name) VALUES ($1) RETURNING id"
    values=[@name]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end



  def update()
    sql="UPDATE character_classes SET (name) = ($1) WHERE id=$2"
    values=[@name, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql="DELETE FROM character_classes WHERE id = $1"
    values=[@id]
    SqlRunner.run(sql,values)
  end

# return the number of items this character class has assigned to it
  def item_count()
    sql = "SELECT COUNT(id) AS num FROM items WHERE c_class_id = $1"
    values=[id]
    return SqlRunner.run(sql,values).first['num'].to_i
  end

    def self.find(id)
      sql = "SELECT * FROM character_classes WHERE id = $1"
      values=[id]
      found = SqlRunner.run(sql,values).first
      return C_Class.new(found)
    end

  #return an object given the name and c_class_id
    def self.find_by_name(name)
      sql="SELECT * FROM character_classes WHERE name=$1 LIMIT 1"
      values=[name]
      found = SqlRunner.run(sql,values).first
      return C_Class.new(found)
    end

    def self.all()
      sql = "SELECT * FROM character_classes"
      c_classes = SqlRunner.run( sql )
      result = c_classes.map { |c_class| C_Class.new( c_class ) }
      return result
    end

  def self.delete_all()
    sql="DELETE FROM character_classes"
    SqlRunner.run(sql)
  end

end
