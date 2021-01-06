require 'docking_station'

describe DockingStation do

    it { is_expected.to respond_to :release_bike }

    it 'Releases a bike and expects it to be working' do
      bike = subject.release_bike
      expect(bike).to respond_to(:working?)
      expect(bike.working?).to eq true
    end

    it { is_expected.to respond_to :dock_bike }

    it 'A valid bike returned' do
      # bike = Bike.new
      expect(subject.dock_bike(bike)).to eq true
    end

    it 'Has bikes' do
      # bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike_counter).to be > 0
    end

end

=begin
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
=end
