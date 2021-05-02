describe Validations::Instructions do
  describe "#valid?" do
    subject { described_class.new(instructions).valid? }

    context "when enter valid instructions" do
      let(:instructions) { "MMRMMRMRRM" }

      it { is_expected.to be true }
    end

    context "when enter invalid instructions" do
      let(:instructions) { "LMLMLMLMMWE" }

      it { is_expected.to be false }
    end
  end
end
