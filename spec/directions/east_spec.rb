describe Directions::East do
  describe "#turn_right" do
    subject { described_class.new.turn_right }
    it { is_expected.to be_a Directions::South }
  end

  describe "#turn_left" do
    subject { described_class.new.turn_left }
    it { is_expected.to be_a Directions::North }
  end

  describe "#move" do
    subject { described_class.new.move([0, 0]) }
    it { is_expected.to eq [1, 0] }
  end

  describe "#to_s" do
    subject { described_class.new.to_s }
    it { is_expected.to eq "E" }
  end
end
