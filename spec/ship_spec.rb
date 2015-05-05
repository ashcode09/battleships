require 'ship'

describe Ship do
  it 'ship responds to place_ship' do
    expect(subject).to respond_to :place_ship
  end

  it 'has a defined size' do
    expect(subject).to respond_to :ship_size
  end

  it 'has a defined size of \'1\'' do
    expect(subject.ship_size).to eq 1
  end
end