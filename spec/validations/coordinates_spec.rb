describe Validations::Coordinates do
  let(:x_max) { 5 }
  let(:y_max) { 5 }
  let(:grid) { MarsGrid.new(x_max, y_max) }

  subject { Validations::Coordinates.new(grid, x, y, direction).valid? }

  describe "#valid?" do
    context "when enter valid position and valid direction" do
      let(:x) { 1 }
      let(:y) { 2 }
      let(:direction) { "N" }

      it { is_expected.to be true }
    end

    context "when enter invalid position and valid direction" do
      let(:x) { 5 }
      let(:y) { 6 }
      let(:direction) { "N" }

      it { is_expected.to be false }
    end

    context "when enter valid position and invalid direction" do
      let(:x) { 3 }
      let(:y) { 3 }
      let(:direction) { "T" }

      it { is_expected.to be false }
    end
  end
end
