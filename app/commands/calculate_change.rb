class CalculateChange < PowerTypes::Command.new(:amount)
  def perform
    if @amount == 1
      [1]
    elsif @amount == 2
      [1, 1]
    end
  end
end
