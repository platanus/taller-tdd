require 'rails_helper'

describe CalculateChange do
  def perform(amount)
    described_class.for(amount: amount)
  end

  describe "#perform" do
    context "when change is $1" do
      it "returns only a $1 coin" do
        expect(perform(1)).to eq([1])
      end
    end

    context "when change is $2" do
      it "returns two coins of $1" do
        expect(perform(2)).to eq([1, 1])
      end
    end

    context "when change is $3" do
      it "returns three coins of $1" do
        expect(perform(3)).to eq([1, 1, 1])
      end
    end

    context "when change is $5" do
      it "returns one coin of $5" do
        expect(perform(5)).to eq([5])
      end
    end

    context "when change is $7" do
      it "returns two coins of $1 and one coin of $5" do
        expect(perform(7)).to eq([1, 1, 5])
      end
    end

    context "when change is $10" do
      it "returns one coin of $10" do
        expect(perform(10)).to eq([10])
      end
    end

    context "when change is $13" do
      it "returns one coin of $10 and three coins of $1" do
        expect(perform(13)).to eq([1, 1, 1, 10])
      end
    end

    context "when change is $15" do
      it "returns one coin of $10 and one coin of $5" do
        expect(perform(15)).to eq([5, 10])
      end
    end

    context "when change is $20" do
      it "returns two coins of $10" do
        expect(perform(20)).to eq([10, 10])
      end
    end

    context "when change is $36" do
      it "returns three coins of $10 one of $5 and one of $1" do
        expect(perform(36)).to eq([1, 5, 10, 10, 10])
      end
    end

    context "when change is $50" do
      it "returns one coin of $50" do
        expect(perform(50)).to eq([50])
      end
    end
  end
end
