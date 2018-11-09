class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    coins = []

    coins << 5 if @amount % 5 == 0
    coins << 10 if @amount % 10 == 0
    coins << [1] * @amount if @amount < 5

    return coins.flatten
  end
end
