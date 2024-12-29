class Calculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    numbers, delimiter = find_delimiter(numbers)
    sum = 0
    numbers.split(delimiter).each do |number|
      if number.include?("\n")
        number.split("\n").each do |num|
          sum += num.to_i
        end
      else
        sum += number.to_i
      end
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
end
