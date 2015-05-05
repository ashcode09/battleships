require 'capybara/rspec'

# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location

feature 'Ships can be placed on location on board' do
  scenario 'Player is able to put ship on board' do
    ship = Ship.new
    expect(ship).to respond_to :place_ship
  end
end