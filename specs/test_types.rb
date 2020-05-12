require("minitest/autorun")
require("minitest/rg")
require_relative('../models/types.rb')



class TypeTest < MiniTest::Test

  def test_types_attrs()
    newtype = Type.new({'name' => 'Staff', 'category_id' => 1, 'usable_by' => 'Mage'})
     assert_equal('Staff', newtype.name)
     assert_equal(1, newtype.category_id)
     assert_equal('Mage', newtype.usable_by)
  end





end
