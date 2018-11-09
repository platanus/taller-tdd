class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    coins = []

    coins << 10 if @amount >= 10
    coins << 5 if (@amount - coins.sum) >= 5
    coins << [1] * (@amount - coins.sum) if (@amount - coins.sum).positive?

    coins.flatten.sort
  end
end
