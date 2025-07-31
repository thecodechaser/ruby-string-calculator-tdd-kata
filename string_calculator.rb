class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?
    numbers.split(/[\n,]/).map(&to_i).sum
  end

end
