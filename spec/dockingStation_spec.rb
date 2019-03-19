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
  expect(subject.dock(bike)).to eq [bike]
end

  it "raises an error when release_bike and no bike available" do
    #dock = DockingStation.new
    expect { subject.release_bike }.to raise_error("No Bikes Available")
  end

  it "raises an error when docking bike and bike already in dock" do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike) }.to raise_error("No dock space Available")
  end

  it "raises an error if docking a bike and the station is full i.e greater than 20 already docked" do
    20.times { subject.dock Bike.new }
    expect { 20.times { subject.dock Bike.new } }.to raise_error("No dock space Available")
  end

end
