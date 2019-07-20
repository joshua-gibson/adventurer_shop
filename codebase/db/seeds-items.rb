require_relative('../models/types.rb')
require_relative('../models/items.rb')

Item.delete_all

i01 = Item.new({
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

i02 = Item.new({
  'name' => 'Simple Shield',
  'description' => 'A round wooden shield repurposed from a barrel lid',
  'type_id' => Type.find_by_nc('Shield','Shield').id,
  'image_name' => 'E_Wood01.png',
  'quantity' => 2,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 1.00,
  'sell_price' => 4.00
  })

i03 = Item.new({
  'name' => 'Short Sword',
  'description' => 'A sword designed for close-quarters fighting',
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword001.png',
  'quantity' => 3,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 9.00,
  'sell_price' => 15.00
  })

i04 = Item.new({
  'name' => 'Battered Grimoire',
  'description' => 'A tattered spellbook with many pages missing',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book01.png',
  'quantity' => 1,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 12.00,
  'sell_price' => 20.00
  })

i05 = Item.new({
  'name' => 'Club',
  'description' => 'A heavy stick',
  'type_id' => Type.find_by_nc('Mace','Weapon').id,
  'image_name' => 'W_Mace001.png',
  'quantity' => 7,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 0.50,
  'sell_price' => 3.00
  })

i01.save
i02.save
i03.save
i04.save
i05.save
