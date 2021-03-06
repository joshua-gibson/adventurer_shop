require_relative("../db/sql_runner.rb")

class Item

attr_reader :id
attr_accessor :name, :description, :type_id, :image_name, :quantity, :level, :effects, :buy_price, :sell_price

def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @description = options['description']
  @type_id = options['type_id'].to_i
  @image_name = options['image_name']
  @quantity = options['quantity'].to_i
  @level = options['level'].to_i
  @effects = options['effects']
  @buy_price = options['buy_price'].to_f
  @sell_price = options['sell_price'].to_f
end


def save()
  sql="INSERT INTO items
       (name, description, type_id, image_name, quantity, level, effects, buy_price, sell_price)
       VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id"
  values=[@name, @description, @type_id, @image_name, @quantity, @level, @effects, @buy_price, @sell_price]
  @id = SqlRunner.run(sql,values).first['id'].to_i
end

def update()
  sql="UPDATE items
       SET (name, description, type_id, image_name, quantity, level, effects, buy_price, sell_price)
       = ($1, $2, $3, $4, $5, $6, $7, $8, $9) WHERE id=$10"
  values=[@name, @description, @type_id, @image_name, @quantity, @level, @effects, @buy_price, @sell_price, @id]
  SqlRunner.run(sql,values)
end

def delete()
  sql="DELETE FROM items WHERE id = $1"
  values=[@id]
  SqlRunner.run(sql,values)
end

def type()
  sql = "SELECT * FROM types WHERE id = $1"
  values=[@type_id]
  found = SqlRunner.run(sql,values).first
  return Type.new(found)
end

def stock_warn()
  warn = nil
  warn = "low" if @quantity <= 2
  warn = "none" if @quantity <= 0
  return warn
end

def margin()
  return @sell_price - @buy_price
end

def stock_ch(chtype, amt)
  if chtype == 'add'
    @quantity += amt.to_i
  else
    @quantity -= amt.to_i
  end
end

def self.delete_all()
  sql="DELETE FROM items"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM items
         ORDER BY type_id, level"
  items = SqlRunner.run( sql )
  result = items.map { |item| Item.new( item ) }
  return result
end

def self.all_cat(cat_id)
  sql = "SELECT i.*
         FROM items i
         INNER JOIN types t
         ON i.type_id = t.id
         WHERE t.category_id = $1
         ORDER BY type_id, level"
  values=[cat_id]
  items = SqlRunner.run( sql, values )
  result = items.map { |item| Item.new( item ) }
  return result
end

def self.find(id)
  sql = "SELECT * FROM items WHERE id = $1"
  values=[id]
  found = SqlRunner.run(sql,values).first
  return Item.new(found)
end

end
