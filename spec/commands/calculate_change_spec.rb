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
  end
end
