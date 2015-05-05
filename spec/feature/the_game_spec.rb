require 'capybara/rspec'
require 'board'
# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location

feature 'Ships can be placed on location on board' do
  scenario 'Player is able to place ship on board, which stores the ship\'s location' do
    board = Board.new
    ship = Ship.new
    expect(ship).to respond_to :place_ship
    expect(board).to respond_to :store_location
  end
end