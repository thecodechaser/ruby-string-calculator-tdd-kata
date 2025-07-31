class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?
    
    delimiters = [",", "\n"]

    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      delimiters = [header[2]]
    end

    nums = numbers.split(Regexp.union(delimiters)).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.reject { |n| n > 1000 }.sum
  end

  def self.extract_delimiters(header)
    if header.include?("[")
      header.scan(/\[(.?)\]/).flatten
    else
      [header[2]]
    end
  end


end
