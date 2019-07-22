require_relative('./models/types.rb')
require_relative('./models/items.rb')
require_relative('../models/categories.rb')
require('pry')
require('pry-byebug')

newtype = Type.new({'name' => 'Staff', 'category' => 'Weapon', 'usable_by' => 'Mage'})
newtype.save

newitem = Item.new({'name' => 'xname',
                    'description' => 'xdescription',
                    'type_id' => newtype.id,
                    'image_name' => 'ximage_name',
                    'quantity' => 2,
                    'level' => 3,
                    'effects' => 'xeffects',
                    'buy_price' => 4,
                    'sell_price' => 5,   })
newitem.save


binding.pry
null
