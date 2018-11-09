class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    coins = []

    coins << 10 if ((@amount - coins.sum) % 10).zero?
    coins << 5 if (@amount - coins.sum).positive? && ((@amount - coins.sum) % 5).zero?
    coins << [1] * (@amount - coins.sum) if (@amount - coins.sum).positive? && (@amount - coins.sum) < 5

    coins.flatten
  end
end
