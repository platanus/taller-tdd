require 'rails_helper'

describe CalculateChange do
  def perform(*_args)
    described_class.for(*_args)
  end

  describe "#perform" do
    context "when change is $1" do
      it "returns only a $1 coin" do
        expect(perform).to eq([1])
      end
    end
  end
end