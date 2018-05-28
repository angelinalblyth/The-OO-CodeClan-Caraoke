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


  def playlist_include_guest_fav_song(song)
    for songs in @playlist
      if songs == song
        return "Whoo!"
      else
        return "I'm singing #{song}"
      end
    end
  end

  def add_entry_fee_to_till
    

end
