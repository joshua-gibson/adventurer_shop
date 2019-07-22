require("minitest/autorun")
require("minitest/rg")
require_relative('../models/character_classes.rb')


class CCTest < MiniTest::Test

  def test_CC_attrs()
    newcc = C_Class.new({'name' => 'Mage'})
     assert_equal('Mage', newcc.name)

  end

end
