require_relative("../db/sql_runner.rb")

class Item

attr_reader :id
attr_accessor :name, :description, :type_id, :image_name, :quantity, :level, :effects, :buy_price, :sell_price

def initialize(options)
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @description = options['description']
  @type_id = options['type_id']
  @image_name = options['image_name']
  @quantity = options['quantity']
  @level = options['level']
  @effects = options['effects']
  @buy_price = options['buy_price']
  @sell_price = options['sell_price']
end


end
