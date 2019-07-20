require_relative("../db/sql_runner.rb")

class Type

  attr_reader :id
  attr_accessor :name, :category, :usable_by

  def initialize(options)
    @id = options['id'].to_i if options[:id]
    @name = options['name']
    @category = options['category']
    @usable_by = options['usable_by']
  end


  def save()
    sql="INSERT INTO types (name, category, usable_by) VALUES ($1, $2, $3) RETURNING id"
    values=[@name, @category, @usable_by]
    @id = SqlRunner.run(sql,values).first['id'].to_i
  end


  #
  #
  # def update()
  #
  # end
  #
  #
  # def delete()
  #
  # end
  #
  #
  # self.delete_all()
  #
  # end

end
