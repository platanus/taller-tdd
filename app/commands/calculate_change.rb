class CalculateChange < PowerTypes::Command.new(:amount)
  UNITS = [50,10,5,1]

  def perform
    coins = []

    coins = UNITS.map do |unit|
      coins += [unit] * ((@amount - coins.sum) / unit) if @amount >= unit
      # coins += [10] * ((@amount - coins.sum) / 10) if @amount >= 10
      # coins += [5] * ((@amount - coins.sum) / 5) if @amount  >= 5
      # coins += [1] * ((@amount - coins.sum) / 1) if @amount >= 1
    end

    coins.flatten.sort
  end
end
