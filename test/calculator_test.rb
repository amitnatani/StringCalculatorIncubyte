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
end
