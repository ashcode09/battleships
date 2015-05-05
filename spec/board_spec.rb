require 'board'

describe Board do
  it 'stores the location of the ship' do
    expect(subject).to respond_to :store_location
  end
end