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

  # def initialize
  #   @playing_field = ['A1', 'A2', 'B1', 'B2']
  # end

  # def within_board? player_writes
  #   if @playing_field.include?(player_writes)
  #     store_location
  #   else
  #     fail "Ship can't be placed outside of board"
  #   end
  # end




end