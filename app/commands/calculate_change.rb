class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    coins = []
    @amount.times do
      coins << 1
    end
    coins
  end
end
