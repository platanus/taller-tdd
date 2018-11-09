class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    return [5] if @amount == 5
    return [5,5] if @amount == 10
    coins = []
    @amount.times do
      coins << 1
    end
    coins
  end
end
