require("minitest/autorun")
require("minitest/rg")
require_relative('../models/categories.rb')


class DrinkTest < MiniTest::Test

  def test_cats_attrs()
    newcat = Category.new({'name' => 'Clothing'})
     assert_equal('Clothing', newcat.name)

  end

 



end
