describe Directions::West do
  describe "#turn_right" do
    subject { described_class.new.turn_right }

    it { is_expected.to be_a Directions::North }
  end

  describe "#turn_left" do
    subject { described_class.new.turn_left }

    it { is_expected.to be_a Directions::South }
  end

  describe "#move" do
    subject { described_class.new.move([5, 5]) }

    it { is_expected.to eq [4, 5] }
  end

  describe "#to_s" do
    subject { described_class.new.to_s }
    it { is_expected.to eq "W" }
  end
end
