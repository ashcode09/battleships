require 'ship'

class Board

  def store_location
  end

  def ok_to_place?
    fail 'Choose a space on the grid, idiot' if on_grid? == false
  end

  def on_grid?
    false
  end

end