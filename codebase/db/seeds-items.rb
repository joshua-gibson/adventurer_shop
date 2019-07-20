require_relative('../models/types.rb')
require_relative('../models/items.rb')

Item.delete_all

# Armours
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

i_arm_02 = Item.new({
  'name' => 'Leather Armour',
  'description' => 'A hardened leather chestpiece, tough but flexible',
  'type_id' => Type.find_by_nc('Armour','Clothing').id,
  'image_name' => 'A_Armour01.png',
  'quantity' => 5,
  'level' => 2,
  'effects' => 'none',
  'buy_price' => 6.00,
  'sell_price' => 15.00
  })

i_arm_03 = Item.new({
  'name' => 'Plate Armour',
  'description' => 'An iron breastplate and interlocking pauldrons that provides excellent protection',
  'type_id' => Type.find_by_nc('Armour','Clothing').id,
  'image_name' => 'A_Armour02.png',
  'quantity' => 2,
  'level' => 3,
  'effects' => 'none',
  'buy_price' => 24.00,
  'sell_price' => 87.00
  })

i_arm_04 = Item.new({
  'name' => 'Masterwork Plate Armour',
  'description' => 'A rare piece representing the pinnacle of mortal skill in armoursmithing',
  'type_id' => Type.find_by_nc('Armour','Clothing').id,
  'image_name' => 'A_Armour03.png',
  'quantity' => 1,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 82.00,
  'sell_price' => 230.00
  })

i_arm_05 = Item.new({
  'name' => 'Firebourne Armour',
  'description' => 'Arcane magicks shroud the wearer in flames',
  'type_id' => Type.find_by_nc('Armour','Clothing').id,
  'image_name' => 'A_Armor05.png',
  'quantity' => 1,
  'level' => 5,
  'effects' => 'Fire',
  'buy_price' => 350.00,
  'sell_price' => 780.00
  })

i_arm_01.save
i_arm_02.save
i_arm_03.save
i_arm_04.save
i_arm_05.save


#shields
i_shields_01 = Item.new({
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

i_shields_02 = Item.new({
  'name' => 'Banded Shield',
  'description' => 'A simple wooden shield reinforced with iron bandings',
  'type_id' => Type.find_by_nc('Shield','Shield').id,
  'image_name' => 'E_Wood02.png',
  'quantity' => 4,
  'level' => 2,
  'effects' => 'none',
  'buy_price' => 7.00,
  'sell_price' => 18.00
  })

i_shields_03 = Item.new({
  'name' => 'Steel Buckler',
  'description' => 'A sturdy metal shield that is lighter than it looks',
  'type_id' => Type.find_by_nc('Shield','Shield').id,
  'image_name' => 'E_Metal02.png',
  'quantity' => 5,
  'level' => 3,
  'effects' => 'none',
  'buy_price' => 23.00,
  'sell_price' => 43.00
  })

i_shields_04 = Item.new({
  'name' => 'Kite Shield',
  'description' => 'A large metal shield that provides full coverage',
  'type_id' => Type.find_by_nc('Shield','Shield').id,
  'image_name' => 'E_Metal04.png',
  'quantity' => 2,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 44.00,
  'sell_price' => 67.00
  })

i_shields_05 = Item.new({
  'name' => 'Holy Shield',
  'description' => 'Shines with the radiant blessings of the holy mother',
  'type_id' => Type.find_by_nc('Shield','Shield').id,
  'image_name' => 'E_Gold01.png',
  'quantity' => 2,
  'level' => 4,
  'effects' => 'Holy',
  'buy_price' => 153.00,
  'sell_price' => 260.00
  })

  i_shields_01.save
  i_shields_02.save
  i_shields_03.save
  i_shields_04.save
  i_shields_05.save


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



i03.save
i04.save
i05.save
