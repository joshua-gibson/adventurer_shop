require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')

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

#swords
i_sword_01 = Item.new({
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
i_sword_02 = Item.new({
  'name' => 'Long Sword',
  'description' => "A soldier's standard issue blade",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword003.png',
  'quantity' => 5,
  'level' => 2,
  'effects' => 'none',
  'buy_price' => 15.00,
  'sell_price' => 39.00
  })

i_sword_03 = Item.new({
  'name' => 'Broad Sword',
  'description' => "A basket-hilted modern military weapon",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword014.png',
  'quantity' => 7,
  'level' => 3,
  'effects' => 'none',
  'buy_price' => 18.00,
  'sell_price' => 48.00
  })

i_sword_04 = Item.new({
  'name' => 'Ornate Sabre',
  'description' => "An exotic weapon with curved blade",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword013.png',
  'quantity' => 2,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 43.00,
  'sell_price' => 97.00
  })

i_sword_05 = Item.new({
  'name' => 'Greatsword',
  'description' => "An enormous two-handed sword",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword004.png',
  'quantity' => 3,
  'level' => 5,
  'effects' => 'none',
  'buy_price' => 127.00,
  'sell_price' => 216.00
  })

i_sword_06 = Item.new({
  'name' => 'Sword of Ember',
  'description' => "This blade erupts in a torrent of fire when unsheathed",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'W_Sword016.png',
  'quantity' => 0,
  'level' => 6,
  'effects' => 'Fire',
  'buy_price' => 387.00,
  'sell_price' => 679.00
  })
i_sword_07 = Item.new({
  'name' => 'Forceblade',
  'description' => "Projects a wave of force when swung",
  'type_id' => Type.find_by_nc('Sword','Weapon').id,
  'image_name' => 'S_Sword01.png',
  'quantity' => 1,
  'level' => 6,
  'effects' => 'Fire',
  'buy_price' => 420.00,
  'sell_price' => 765.00
  })

i_sword_01.save
i_sword_02.save
i_sword_03.save
i_sword_04.save
i_sword_05.save
i_sword_06.save
i_sword_07.save

#books
i_book_01 = Item.new({
  'name' => 'Battered Grimoire',
  'description' => 'A tattered spellbook with many pages missing',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book05.png',
  'quantity' => 1,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 12.00,
  'sell_price' => 20.00
  })
i_book_02 = Item.new({
  'name' => "Acolyte's Textbook",
  'description' => 'A textbook from the Tower with notes scrawled in the margins',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book01.png',
  'quantity' => 3,
  'level' => 2,
  'effects' => 'none',
  'buy_price' => 32.00,
  'sell_price' => 54.00
  })
i_book_03 = Item.new({
  'name' => "Granger's Book of Hours",
  'description' => 'An arcane tome detailing many advanced rituals',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book02.png',
  'quantity' => 1,
  'level' => 3,
  'effects' => 'none',
  'buy_price' => 97.00,
  'sell_price' => 143.00
  })
i_book_04 = Item.new({
  'name' => "Lorekeeper",
  'description' => 'A detailed recording of practical magical experiments',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book07.png',
  'quantity' => 1,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 182.00,
  'sell_price' => 276.00
  })

i_book_05 = Item.new({
  'name' => "Cryptonomicon",
  'description' => 'Touching this black bound volume causes disturbing hallucinations',
  'type_id' => Type.find_by_nc('Spellbook','Weapon').id,
  'image_name' => 'W_Book04.png',
  'quantity' => 1,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 467.00,
  'sell_price' => 638.00
  })

i_book_01.save
i_book_02.save
i_book_03.save
i_book_04.save
i_book_05.save



#maces
i_mace_01 = Item.new({
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

i_mace_02 = Item.new({
  'name' => 'Sledgehammer',
  'description' => 'A lage industrial hammer repurposed as a weapon',
  'type_id' => Type.find_by_nc('Mace','Weapon').id,
  'image_name' => 'W_Mace001.png',
  'quantity' => 4,
  'level' => 2,
  'effects' => 'none',
  'buy_price' => 3,
  'sell_price' => 7
  })

i_mace_03 = Item.new({
  'name' => 'Morning Star',
  'description' => 'A heavy steel spiked ball swung on a chain',
  'type_id' => Type.find_by_nc('Mace','Weapon').id,
  'image_name' => 'W_Mace005.png',
  'quantity' => 5,
  'level' => 3,
  'effects' => 'none',
  'buy_price' => 12,
  'sell_price' => 34
  })

i_mace_04 = Item.new({
  'name' => "Flail",
  'description' => 'A wickedly hooked chain swung from a handle',
  'type_id' => Type.find_by_nc('Mace','Weapon').id,
  'image_name' => 'W_Mace006.png',
  'quantity' => 6,
  'level' => 4,
  'effects' => 'none',
  'buy_price' => 32,
  'sell_price' => 56
  })

i_mace_05 = Item.new({
  'name' => "Flanged Mace",
  'description' => 'A large two handed mace with sharp flanges',
  'type_id' => Type.find_by_nc('Mace','Weapon').id,
  'image_name' => 'W_Mace013.png',
  'quantity' => 2,
  'level' => 5,
  'effects' => 'none',
  'buy_price' => 54,
  'sell_price' => 82
  })

i_mace_01.save
i_mace_02.save
i_mace_03.save
i_mace_04.save
i_mace_05.save

# ring
i_ring_01 = Item.new({
  'name' => "Silver Ring",
  'description' => 'A shiny silver ring',
  'type_id' => Type.find_by_nc('Ring','Jewlery').id,
  'image_name' => 'Ac_Ring04.png',
  'quantity' => 4,
  'level' => 1,
  'effects' => 'none',
  'buy_price' => 12,
  'sell_price' => 21
  })
i_ring_01.save
