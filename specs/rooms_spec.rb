require("minitest/autorun")
require("minitest/rg")

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Angelina", "Wish", 50)
    @guest2 = Guest.new("Grant", "Fat Lip", 40)
    @guest3 = Guest.new("Abi", "Whats my age again?", 60)
    @guest4 = Guest.new("Hammy", "This could be anywhere in the world", 30)
    @guest5 = Guest.new("Louise", "The Middle", 100)
    @song1 = Song.new("The Middle", "Jimmy Eat World")
    @song2 = Song.new("Wish", "Nine Inch Nails")
    @song3 = Song.new("Whats my age again?", "Blink 182")
    @song4 = Song.new("Fat Lip", "Sum41")
    @room1 = Room.new("Rock Room", 2)
    @room2 = Room.new("Pop Room", 3)
    @room3 = Room.new("Jazz Room", 4)
  end

  def test_room_has_name
    assert_equal("Rock Room", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_add_guest_to_room
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guestlist.length)
  end

  def test_remove_guest
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.guestlist.length)
  end

  def test_add_songs_to_playlist
    @room1.add_to_playlist(@song1)
    @room1.add_to_playlist(@song2)
    @room1.add_to_playlist(@song3)
    @room1.add_to_playlist(@song4)
    assert_equal(4, @room1.playlist.length)
  end

  def test_too_many_guests
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_in_guest(@guest4)
    assert_equal("Room too full", @room1.check_capacity)
  end

  def test_check_favourite_song
    @room1.add_to_playlist(@song2.title)
     song = @guest1.favourite_song
     assert_equal("Whoo!", @room1.playlist_include_guest_fav_song(song))
   end



end
