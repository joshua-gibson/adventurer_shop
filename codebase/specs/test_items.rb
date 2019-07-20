require("minitest/autorun")
require("minitest/rg")
require_relative('../models/items.rb')



class DrinkTest < MiniTest::Test

  def test_types_attrs()
    newitem = Item.new({'name' => 'xname',
                        'description' => 'xdescription',
                        'type_id' => 1,
                        'image_name' => 'ximage_name',
                        'quantity' => 2,
                        'level' => 3,
                        'effects' => 'xeffects',
                        'buy_price' => 4,
                        'sell_price' => 5,   })
     assert_equal('xname', newitem.name)
     assert_equal('xdescription', newitem.description)
     assert_equal(1, newitem.type_id)
     assert_equal('ximage_name', newitem.image_name)
     assert_equal(2, newitem.quantity)
     assert_equal(3, newitem.level)
     assert_equal('xeffects', newitem.effects)
     assert_equal(4, newitem.buy_price)
     assert_equal(5, newitem.sell_price)

  end





end
