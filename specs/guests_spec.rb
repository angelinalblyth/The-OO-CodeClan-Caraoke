require("minitest/autorun")
require("minitest/rg")

require_relative("../guests")
require_relative("../rooms")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Angelina", "Wish", 50)
    @guest2 = Guest.new("Grant", "Fat Lip", 40)
    @guest3 = Guest.new("Abi", "Whats my age again?", 60)
    @guest4 = Guest.new("Hammy", "This could be anywhere in the world", 30)
    @guest5 = Guest.new("Louise", "The Middle", 100)
    @room1 = Room.new("Rock Room", 2)
  end

  def test_guest_has_name
    assert_equal("Angelina", @guest1.name)
  end

  def test_guest_has_favourite_song
    assert_equal("Wish", @guest1.favourite_song)
  end

  def test_guest_has_money_in_their_wallet
    assert_equal(50, @guest1.wallet)
  end

  def test_remove_money_from_wallet
    @guest1.remove_money(@room1.entry)
    assert_equal(40, @guest1.wallet)
  end

end
