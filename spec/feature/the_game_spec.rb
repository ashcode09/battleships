require 'capybara/rspec'
require 'board'

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
    allow(board).to receive(:on_grid?).and_return(false)
    expect { board.ok_to_place? }.to raise_error "Choose a space on the grid, idiot"
  end
end

feature 'There is a range of ship sizes to choose from' do
  scenario 'There\'s a ship with size of \'1\'' do
    ship = Ship.new
    expect(ship).to respond_to :ship_size
    expect(ship.ship_size).to be(1 || 2 || 3 )
  end
end







