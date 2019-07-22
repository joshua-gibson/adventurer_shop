require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')

Type.delete_all

t01 = Type.new({'name' => 'Armour',    'category_id' => Category.find_by_name('Clothing').id, 'usable_by' => 'Warrior'})
t02 = Type.new({'name' => 'Shoes',     'category_id' => Category.find_by_name('Clothing').id, 'usable_by' => 'All'})
t03 = Type.new({'name' => 'Necklace',  'category_id' => Category.find_by_name('Jewlery').id, 'usable_by' => 'All'})
t04 = Type.new({'name' => 'Ring',      'category_id' => Category.find_by_name('Jewlery').id, 'usable_by' => 'All'})
t05 = Type.new({'name' => 'Helmet',    'category_id' => Category.find_by_name('Clothing').id, 'usable_by' => 'Warrior'})
t06 = Type.new({'name' => 'Hat',       'category_id' => Category.find_by_name('Clothing').id, 'usable_by' => 'All'})
t07 = Type.new({'name' => 'Shield',    'category_id' => Category.find_by_name('Shield').id, 'usable_by' => 'Warrior'})
t08 = Type.new({'name' => 'Bow',       'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'All'})
t09 = Type.new({'name' => 'Dagger',    'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'All'})
t10 = Type.new({'name' => 'Sword',     'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'Warrior'})
t11 = Type.new({'name' => 'Axe',       'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'Warrior'})
t12 = Type.new({'name' => 'Mace',      'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'Warrior'})
t13 = Type.new({'name' => 'Spellbook', 'category_id' => Category.find_by_name('Weapon').id, 'usable_by' => 'Mage'})

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
