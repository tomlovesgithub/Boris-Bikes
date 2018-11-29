require 'dockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it "gives us a working bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end
  it { is_expected.to respond_to(:dock).with(1).argument }

  it "docks a bike" do
  bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

  it "raises an error when release_bike and no bike available" do
    dock = DockingStation.new
    expect { dock.release_bike }.to raise_error("No Bikes Available")
  end


end
