describe Explore do
  describe "#call" do
    let(:rover) { Rover.new(direction, position) }
    subject { Explore.new(rover, instructions).call }

    context "when the rover is at 1 2 N and it receives the 'LMLMLMLMM' instructions" do
      let(:direction) { Directions::North.new }
      let(:position) { [1, 2] }
      let(:instructions) {  "LMLMLMLMM" }

      it { is_expected.to eq "1 3 N" }
    end

    context "when the rover is at 3 3 E and it receives the 'MMRMMRMRRM' instructions" do
      let(:direction) { Directions::East.new }
      let(:position) { [3, 3] }
      let(:instructions) {  "MMRMMRMRRM" }

      it { is_expected.to eq "5 1 E" }
    end
  end
end
