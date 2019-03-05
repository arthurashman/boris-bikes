require 'docking_station'

describe DockingStation do
  it 'creates new docking station' do
    expect(DockingStation.new.is_a? DockingStation).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it { is_expected.to respond_to(:working) }
end

describe DockingStation do
  it 'checks the bike is working' do
    expect(DockingStation.:working)
  end
end
