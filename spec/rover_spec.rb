describe Rover do
  context "when facing north at position 0, 0" do
    let(:rover) { described_class.new(Directions::North.new) }

    describe "#turn_right" do
      it "faces East" do
        rover.turn_right
        expect(rover.direction).to be_a Directions::East
      end
    end

    describe "#turn_left" do
      it "faces West" do
        rover.turn_left
        expect(rover.direction).to be_a Directions::West
      end
    end

    describe "#move" do
      before { rover.move }

      it "moves to position 0, 1" do
        expect(rover.position).to eq [0, 1]
        expect(rover.to_s).to eq "0 1 N"
      end
    end
  end

  context "when facing south at position 0, 0" do
    let(:rover) { described_class.new(Directions::South.new) }

    describe "#turn_right" do
      before {  rover.turn_right }

      it "faces East" do
        expect(rover.direction).to be_a Directions::West
      end
    end

    describe "#turn_left" do
      before { rover.turn_left }
      it "faces West" do
        expect(rover.direction).to be_a Directions::East
      end
    end

    describe "#move" do
      before { rover.move }

      it "moves to position 0, -1" do
        expect(rover.position).to eq [0, -1]
        expect(rover.to_s).to eq "0 -1 S"
      end
    end
  end

  context "when facing west at position 0, 0" do
    let(:rover) { described_class.new(Directions::West.new) }

    describe "#turn_right" do
      before { rover.turn_right }

      it "faces East" do
        expect(rover.direction).to be_a Directions::North
      end
    end

    describe "#turn_left" do
      before { rover.turn_left }

      it "faces West" do
        expect(rover.direction).to be_a Directions::South
      end
    end

    describe "#move" do
      before { rover.move }

      it "moves to position -1, 0" do
        expect(rover.position).to eq [-1, 0]
        expect(rover.to_s).to eq "-1 0 W"
      end
    end
  end

  context "when facing east at position 0, 0" do
    let(:rover) { described_class.new(Directions::East.new) }

    describe "#turn_right" do
      before { rover.turn_right }

      it "faces East" do
        expect(rover.direction).to be_a Directions::South
      end
    end

    describe "#turn_left" do
      before { rover.turn_left }

      it "faces West" do
        expect(rover.direction).to be_a Directions::North
      end
    end

    describe "#move" do
      before { rover.move }

      it "moves to position -1, 0" do
        expect(rover.position).to eq [1, 0]
        expect(rover.to_s).to eq "1 0 E"
      end
    end
  end
end
