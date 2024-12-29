class Calculator
  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    sum = 0
    numbers.split(",").each do |number|
      sum += number.to_i
    end
    sum
  end
end
