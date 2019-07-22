require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')
require_relative('../models/character_classes.rb')
require_relative('../models/ctrel.rb')

CTrel.delete_all

ctr01 = CTrel.new({'cclass_id' => C_Class.find_by_name('Mage').id, 'type_id' => Type.find_by_nc('Spellbook', 'Weapon').id})
ctr02 = CTrel.new({'cclass_id' => C_Class.find_by_name('Warrior').id, 'type_id' => Type.find_by_nc('Sword', 'Weapon').id})


ctr01.save
ctr02.save
