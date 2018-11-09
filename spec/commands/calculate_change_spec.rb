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

    context "when change is $10" do
      it "returns one coin of $5" do
        expect(perform(10)).to eq([5,5])
      end
    end
  end
end
