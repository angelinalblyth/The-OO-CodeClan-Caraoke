require("minitest/autorun")
require("minitest/rg")

require_relative("../bar")
require_relative("../guests")
require_relative("../rooms")

class BarTest < MiniTest::Test

  def setup
    @drink1 = Bar.new("Rum and Coke", 5)
    @drink2 = Bar.new("Beer", 4)
    @drink3 = Bar.new("Wine", 6)
  end

  def test_drink_has_name
    assert_equal("Rum and Coke", @drink1.drink_name)
  end

  def test_see_till_amount
    assert_equal(0, @drink1.till)
  end

  def test_drink_has_cost
    assert_equal(5, @drink1.price)
  end

end
