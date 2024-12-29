require 'test/unit'
require_relative '../app/calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 0, @calculator.add('')
    assert_equal 0, @calculator.add(nil)
  end

  def test_add_with_comma_delimeter
    assert_equal 6, @calculator.add('1,2,3')
    assert_equal 9, @calculator.add('4, 2, 3')
  end

  def test_add_with_new_lines
    assert_equal 6, @calculator.add("1\n2,3")
    assert_equal 10, @calculator.add("1,2\n\n4,3")
    assert_equal 10, @calculator.add("\n1,2\n\n4,3\n")
  end
end
