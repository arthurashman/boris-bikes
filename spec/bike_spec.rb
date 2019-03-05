require 'bike'

describe Bike do
  it 'creates an instance of Bike' do
    expect(Bike.new.is_a? Bike).to eq true
  end
end

describe Bike do
  it { is_expected.to respond_to(:working?) }
end
