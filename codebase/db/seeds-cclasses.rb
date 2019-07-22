require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')
require_relative('../models/character_classes.rb')

C_Class.delete_all

cc01 = C_Class.new({"name" => 'Mage'})
cc02 = C_Class.new({"name" => 'Warrior'})
cc03 = C_Class.new({"name" => 'Ranger'})
cc04 = C_Class.new({"name" => 'Cleric'})


cc01.save
cc02.save
cc03.save
cc04.save
