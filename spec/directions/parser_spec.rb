describe Directions::Parser do
  describe "#parse" do
    context "when is 'S'" do
      subject { described_class.new("S").call }

      it { is_expected.to be_a Directions::South }
    end

    context "when is 'N'" do
      subject { described_class.new("N").call }

      it { is_expected.to be_a Directions::North }
    end


    context "when is 'E'" do
      subject { described_class.new("E").call }

      it { is_expected.to be_a Directions::East }
    end

    context "when is 'W'" do
      subject { described_class.new("W").call }

      it { is_expected.to be_a Directions::West }
    end
  end
end
