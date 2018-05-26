require("minitest/autorun")
require("minitest/rg")

require_relative("../songs")

class SongsTest < MiniTest::Test

def setup
  @song1 = Song.new("The Middle", "Jimmy Eat World")
  @song2 = Song.new("Wish", "Nine Inch Nails")
  @song3 = Song.new("Whats my age again?", "Blink 182")
  @song4 = Song.new("Fat Lip", "Sum41")
end

def test_song_has_title
  assert_equal("The Middle", @song1.title)
end

def test_song_has_artist
  assert_equal("Jimmy Eat World", @song1.artist)
end

end
