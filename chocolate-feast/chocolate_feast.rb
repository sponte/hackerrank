class ChocolateFeast
  attr_accessor :money, :price, :wrappers_required

  def initialize
    @chocolate_bars = 0
  end

  def chocolate_bars
    # Buy as many chocolates as possible
    @chocolate_bars += money / price

    # Eat the chocolate and save wrappers
    wrappers = @chocolate_bars

    # While we have enough wrappers, get bars from promotion
    while wrappers >= wrappers_required
      # Get more chocolate
      additional_chocolates = wrappers / wrappers_required
      wrappers -= additional_chocolates * wrappers_required

      # Eat promotional chocolate
      wrappers += additional_chocolates
      @chocolate_bars += additional_chocolates
    end

    @chocolate_bars
  end
end