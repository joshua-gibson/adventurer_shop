require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')
require_relative('../models/character_classes.rb')

C_Class.delete_all

cc01 = Category.new({"name" => 'Mage'})
cc02 = Category.new({"name" => 'Warrior'})
cc03 = Category.new({"name" => 'Ranger'})
cc04 = Category.new({"name" => 'Cleric'})


cc01.save
cc02.save
cc03.save
cc04.save
