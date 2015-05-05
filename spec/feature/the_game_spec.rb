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

feature 'Ships are constrained to be placed on the board only' do
  scenario 'Player receives error when picking square outside of playing area' do
    board = Board.new
    ship = Ship.new
    # somehow we figure out if it's within our board (true/false) on_grid?
    allow(board).to receive(:on_grid?).and_return(false)
    # player gets an error saying "nuh-uh, out of board" if false:
    expect { board.ok_to_place? }.to raise_error "Choose a space on the grid, idiot"
  end
end

feature 'There is a range of ship sizes to choose from' do
  scenario 'There\'s a ship with size of \'1\'' do
    ship = Ship.new
    expect(ship).to respond_to :ship_size
    expect(ship.ship_size).to eq 1
  end
end
    # there's an array 'ships' containing 1 ship with a 'size' property
    # you can pick it and/or place it







