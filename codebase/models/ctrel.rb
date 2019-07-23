require_relative("../db/sql_runner.rb")

class CTrel

  attr_reader :id
  attr_accessor :cclass_id, :type_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @cclass_id = options['cclass_id'].to_i
    @type_id = options['type_id'].to_i
  end


  def save()
    sql="INSERT INTO cclass_type_rel (cclass_id, type_id) VALUES ($1, $2) RETURNING id"
    values=[@cclass_id, @type_id]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end



  def update()
    sql="UPDATE cclass_type_rel SET (cclass_id, type_id) = ($1, $2) WHERE id=$3"
    values=[@cclass_id, @type_id, @id]
    SqlRunner.run(sql,values)
  end

  def delete()
    sql="DELETE FROM cclass_type_rel WHERE id = $1"
    values=[@id]
    SqlRunner.run(sql,values)
  end

  def type()
    sql="SELECT * from types WHERE id = $1"
    values=[@type_id]
    found = SqlRunner.run(sql,values).first
    return Type.new(found)
  end

  def c_class()
    sql="SELECT * from character_classes WHERE id = $1"
    values=[@cclass_id]
    found = SqlRunner.run(sql,values).first
    return C_Class.new(found)
  end

    def self.find(id)
      sql = "SELECT * FROM cclass_type_rel WHERE id = $1"
      values=[id]
      found = SqlRunner.run(sql,values).first
      return CTrel.new(found)
    end

    def self.all()
      sql = "SELECT * FROM cclass_type_rel"
      ctrels = SqlRunner.run( sql )
      result = ctrels.map { |ctrel| CTrel.new( ctrel ) }
      return result
    end

  def self.delete_all()
    sql="DELETE FROM cclass_type_rel"
    SqlRunner.run(sql)
  end

end
