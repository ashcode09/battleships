require 'board'

describe Board do
  it 'stores the location of the ship' do
    expect(subject).to respond_to :store_location
  end

  it 'The board knows if a ship is OK to place' do
    expect(subject).to respond_to :ok_to_place?
  end
  it 'raises an error when ship can\'t be placed in requested square' do
    expect { subject.ok_to_place? }.to raise_error "Choose a space on the grid, idiot"
  end
end