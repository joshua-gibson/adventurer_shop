require_relative('../models/types.rb')
require_relative('../models/items.rb')

Item.delete_all

(name, description, type_id, image_name, quantity, level, effects, buy_price, sell_price)

i01 = Type.new({
  'name' => 'Armour', 'description' => 'Clothing', 'type_id' => Type.find_by_nc()
  })


i01.save
