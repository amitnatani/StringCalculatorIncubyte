class Calculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    sum = 0
    numbers.split(",").each do |number|
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
end
