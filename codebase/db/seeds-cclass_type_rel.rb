require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')
require_relative('../models/character_classes.rb')
require_relative('../models/ctrel.rb')

CTrel.delete_all

# Armour
ctr_armor_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Armour', 'Clothing').id})
ctr_armor_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Armour', 'Clothing').id})
ctr_armor_03 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Armour', 'Clothing').id})

ctr_armor_01.save
ctr_armor_02.save
ctr_armor_03.save


# shoes
ctr_shoes_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Shoes', 'Clothing').id})
ctr_shoes_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Shoes', 'Clothing').id})
ctr_shoes_03 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Shoes', 'Clothing').id})
ctr_shoes_04 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Shoes', 'Clothing').id})

ctr_shoes_01.save
ctr_shoes_02.save
ctr_shoes_03.save
ctr_shoes_04.save

# necklaces
ctr_necklace_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Necklace', 'Jewlery').id})
ctr_necklace_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Necklace', 'Jewlery').id})

ctr_necklace_01.save
ctr_necklace_02.save

# rings
ctr_ring_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Ring', 'Jewlery').id})
ctr_ring_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Ring', 'Jewlery').id})
ctr_ring_03 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Ring', 'Jewlery').id})
ctr_ring_04 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Ring', 'Jewlery').id})

ctr_ring_01.save
ctr_ring_02.save
ctr_ring_03.save
ctr_ring_04.save


# helmets
ctr_helmet_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Helmet', 'Clothing').id})
ctr_helmet_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Helmet', 'Clothing').id})
ctr_helmet_03 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Helmet', 'Clothing').id})

ctr_helmet_01.save
ctr_helmet_02.save
ctr_helmet_03.save

# hat
ctr_hat_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Hat', 'Clothing').id})

ctr_hat_01.save

# shield
ctr_shield_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Shield', 'Shield').id})

ctr_shield_01.save

# bow
ctr_bow_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Bow', 'Weapon').id})

ctr_bow_01.save

# daqgger
ctr_dagger_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Bow', 'Weapon').id})
ctr_dagger_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Bow', 'Weapon').id})
ctr_dagger_03 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Bow', 'Weapon').id})

ctr_dagger_01.save
ctr_dagger_02.save
ctr_dagger_03.save

# sword
ctr_sword_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Sword', 'Weapon').id})
ctr_sword_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Sword', 'Weapon').id})

ctr_sword_01.save
ctr_sword_02.save

# axe
ctr_axe_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Ranger').id, 'type_id' => Type.find_by_nc('Axe', 'Weapon').id})
ctr_axe_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Axe', 'Weapon').id})

ctr_axe_01.save
ctr_axe_02.save

# mace
ctr_mace_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Cleric').id, 'type_id' => Type.find_by_nc('Mace', 'Weapon').id})
ctr_mace_02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Mace', 'Weapon').id})

ctr_mace_01.save
ctr_mace_02.save

# spellbook
ctr_spellbook_01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Spellbook', 'Weapon').id})

ctr_spellbook_01.save
