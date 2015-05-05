require 'ship'

describe Ship do
  it 'ship responds to place_ship' do
    expect(subject).to respond_to :place_ship
  end
end