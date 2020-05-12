require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')

Type.delete_all

t01 = Type.new({'name' => 'Armour',    'category_id' => Category.find_by_name('Clothing').id})
t02 = Type.new({'name' => 'Shoes',     'category_id' => Category.find_by_name('Clothing').id})
t03 = Type.new({'name' => 'Necklace',  'category_id' => Category.find_by_name('Jewlery').id})
t04 = Type.new({'name' => 'Ring',      'category_id' => Category.find_by_name('Jewlery').id})
t05 = Type.new({'name' => 'Helmet',    'category_id' => Category.find_by_name('Clothing').id})
t06 = Type.new({'name' => 'Hat',       'category_id' => Category.find_by_name('Clothing').id})
t07 = Type.new({'name' => 'Shield',    'category_id' => Category.find_by_name('Shield').id})
t08 = Type.new({'name' => 'Bow',       'category_id' => Category.find_by_name('Weapon').id})
t09 = Type.new({'name' => 'Dagger',    'category_id' => Category.find_by_name('Weapon').id})
t10 = Type.new({'name' => 'Sword',     'category_id' => Category.find_by_name('Weapon').id})
t11 = Type.new({'name' => 'Axe',       'category_id' => Category.find_by_name('Weapon').id})
t12 = Type.new({'name' => 'Mace',      'category_id' => Category.find_by_name('Weapon').id})
t13 = Type.new({'name' => 'Spellbook', 'category_id' => Category.find_by_name('Weapon').id})

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
