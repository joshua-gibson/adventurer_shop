require_relative('./models/types.rb')
require_relative('./models/items.rb')
require_relative('./models/categories.rb')
require_relative('./models/character_classes.rb')
require_relative('./models/ctrel.rb')
require('pry')
require('pry-byebug')

newcc = C_Class.new({'name' => 'Mage'})
newcc.save

newcat = Category.new({'name' => 'Scroll'})
newcat.save

newtype = Type.new({'name' => 'Staff', 'category_id' => Category.find_by_name('Scroll').id, 'usable_by' => 'Mage'})
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

i_arm_01 = Item.new({
  'name' => 'Cloth Armour',
  'description' => 'A padded cloth doublet providing minimal protection',
  'type_id' => Type.find_by_nc('Armour','Clothing').id,
  'image_name' => 'A_Armor04.png',
  'quantity' => 4,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 2.00,
  'sell_price' => 5.00
  })
i_arm_01 .save

binding.pry
null
