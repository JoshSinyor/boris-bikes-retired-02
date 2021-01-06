require 'docking_station'

describe DockingStation do

    it { is_expected.to respond_to :release_bike }

    it 'Releases a bike and expects it to be working' do
      bike = subject.release_bike
      expect(bike).to respond_to(:working?)
      expect(bike.working?).to eq true
    end

end
