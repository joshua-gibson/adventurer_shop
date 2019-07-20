require("minitest/autorun")
require("minitest/rg")
require_relative('../models/types.rb')



class DrinkTest < MiniTest::Test

  def test_types_attrs()
    newtype = Type.new({'name' => 'Staff', 'category' => 'Weapon', 'usable_by' => 'Mage'})
     assert_equal('Staff', newtype.name)
     assert_equal('Weapon', newtype.category)
     assert_equal('Mage', newtype.usable_by)
  end




end
