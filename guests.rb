class Guest

  attr_accessor :name, :favourite_song, :wallet


  def initialize(name, favourite_song, wallet)
    @name = name
    @favourite_song = favourite_song
    @wallet = wallet
  end

  def remove_money(entry_fee)
      @wallet -= entry_fee
    end

end
