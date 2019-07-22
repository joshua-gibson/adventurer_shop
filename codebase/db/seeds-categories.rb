require_relative('../models/types.rb')
require_relative('../models/items.rb')
require_relative('../models/categories.rb')

Category.delete_all

c01 = Category.new({name => Clothing})
c02 = Category.new({name => Jewlery})
c03 = Category.new({name => Shield})
c04 = Category.new({name => Weapon})


c01.save
c02.save
c03.save
c04.save
