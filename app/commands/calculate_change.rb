class CalculateChange < PowerTypes::Command.new(:amount)
  UNITS = [500, 100, 50, 10, 5, 1]

  def perform
    coins = []

    UNITS.each { |unit| coins += [unit] * ((@amount - coins.sum) / unit) if @amount >= unit }

    coins.flatten.sort
  end
end
