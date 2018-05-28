class Bar

  attr_reader :drink_name, :price, :till

  def initialize(drink_name, price)
    @drink_name = drink_name
    @price = price
    @till = 0
  end

end
