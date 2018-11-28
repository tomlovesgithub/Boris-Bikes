require 'dockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "give us a working bike" do
    expect(DockingStation.new.release_bike.working?).to eq true
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

  it "docks a bike" do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end
end
