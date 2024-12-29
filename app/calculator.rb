class Calculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    negatives = []
    numbers, delimiter = find_delimiter(numbers)
    sum = 0
    numbers.split(delimiter).each do |number|
      if number.include?("\n")
        number.split("\n").each do |num|
          check_negative_number(number, negatives)
          sum += num.to_i
        end
      else
        check_negative_number(number, negatives)
        sum += number.to_i
      end
    end
    if negatives.length > 0
      raise ArgumentError.new("negative numbers not allowed #{negatives.join(",")}")
    end
    sum
  end

  def find_delimiter(numbers)
    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[3..]
    end
    [numbers, delimiter]
  end

  def check_negative_number(number, negatives)
    return if number.to_i >= 0

    negatives << number.to_i
  end
end
