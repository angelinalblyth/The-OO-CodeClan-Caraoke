require("minitest/autorun")
require("minitest/rg")

require_relative("../bar")
require_relative("../guests")
require_relative("../rooms")

class BarTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Angelina", "Wish", 50)
    @guest2 = Guest.new("Grant", "Fat Lip", 40)
    @guest3 = Guest.new("Abi", "Whats my age again?", 60)
    @guest4 = Guest.new("Hammy", "This could be anywhere in the world", 30)
    @guest5 = Guest.new("Louise", "The Middle", 100)
    @room1 = Room.new("Rock Room", 2)
    @bar = Bar.new("The Karaoke Cave")
  end

  def test_bar_has_name
    assert_equal("The Karaoke Cave", @bar.name)
  end

  def test_see_till_amount
    assert_equal(0, @bar.till)
  end

end
