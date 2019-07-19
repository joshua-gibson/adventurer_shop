require("minitest/autorun")
require("minitest/rg")
require_relative('../models/types.rb')



class DrinkTest < MiniTest::Test

def test_types_attrs()
  newtype = Type.new({'category' => 'Staff', 'usable_by' => 'Mage'})
   assert_equal('Staff', newtype.category)
   assert_equal('Mage', newtype.usable_by)
end




end
