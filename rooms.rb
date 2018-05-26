class Room

  attr_accessor :name, :capacity, :entry, :guestlist, :playlist

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @entry = 10
    @guestlist = []
    @playlist = []

  end

  def check_in_guest(guest)
    @guestlist << guest
  end

  def check_out_guest(guest)
    @guestlist.delete(guest)
  end

  def add_to_playlist(song)
    @playlist << song
  end

  def check_capacity()
    if @guestlist.length <= capacity
      check_in_guest
    else
      return "Room too full"
    end
  end

  def check_playlist(fav_song)
song_title = []
    for song in @playlist
      song_title << [:title]
      if song_title == fav_song
      return "Whoo!"
    else
      return "I'm singing #{fav_song}"
    end
  end
  end

end
