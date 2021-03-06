require 'docking_station'

describe DockingStation do
  it 'creates new docking station' do
    expect(subject.is_a? DockingStation).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
end

describe DockingStation do
  it { is_expected.to respond_to(:bikes) }
end

  describe '#release_bike' do
    it 'gets a working bike' do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      bike = docking_station.release_bike
      expect(bike.working?).to eq true
    end
  end

  describe '#release_bike' do
    it 'gives error if docking station is empty' do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error "No bikes available"
  end
  end

  describe '#dock' do
    it 'gives error if docking station is full' do
      docking_station = DockingStation.new
      bike = Bike.new
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock(bike) }.to raise_error "No space available"
    end
  end

  describe DockingStation do
    it "expected to have the default capacity of 20" do
      expect(subject).to have_attributes(:capacity => 20)
    end

    it "change the capacity to the passed argument" do
      expect(DockingStation.new(25)).to have_attributes(:capacity => 25)
    end
  end
