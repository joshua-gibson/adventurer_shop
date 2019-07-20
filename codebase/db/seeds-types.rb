require_relative('../models/types.rb')
require_relative('../models/items.rb')

Type.delete_all

t01 = Type.new({'name' => 'Armour', 'category' => 'Clothing', 'usable_by' => 'Warrior'})
t02 = Type.new({'name' => 'Shoes', 'category' => 'Clothing', 'usable_by' => 'All'})
t03 = Type.new({'name' => 'Necklace', 'category' => 'Jewlery', 'usable_by' => 'All'})
t04 = Type.new({'name' => 'Ring', 'category' => 'Jewlery', 'usable_by' => 'All'})
t05 = Type.new({'name' => 'Helmet', 'category' => 'Clothing', 'usable_by' => 'Warrior'})
t06 = Type.new({'name' => 'Hat', 'category' => 'Clothing', 'usable_by' => 'All'})
t07 = Type.new({'name' => 'Shield', 'category' => 'Shield', 'usable_by' => 'Warrior'})
t08 = Type.new({'name' => 'Bow', 'category' => 'Weapon', 'usable_by' => 'All'})
t09 = Type.new({'name' => 'Dagger', 'category' => 'Weapon', 'usable_by' => 'All'})
t10 = Type.new({'name' => 'Sword', 'category' => 'Weapon', 'usable_by' => 'Warrior'})
t11 = Type.new({'name' => 'Axe', 'category' => 'Weapon', 'usable_by' => 'Warrior'})
t12 = Type.new({'name' => 'Mace', 'category' => 'Weapon', 'usable_by' => 'Warrior'})
t13 = Type.new({'name' => 'Spellbook', 'category' => 'Weapon', 'usable_by' => 'Mage'})

t01.save
t02.save
t03.save
t04.save
t05.save
t06.save
t07.save
t08.save
t09.save
t10.save
t11.save
t12.save
t13.save
