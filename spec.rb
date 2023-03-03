require 'minitest/autorun'
require_relative 'cs3203_assignment4'

describe Assignment4 do
  before do
    @a4 = Assignment4.new
  end

  it "two numbers in array add to odd target" do
    numbers = [1, 2, 3, 4]
    _(@a4.check_add(numbers, 3)).must_equal true
  end

  it "two numbers in array add to even target" do
    numbers = [1, 2, 3, 4]
    _(@a4.check_add(numbers, 6)).must_equal true
  end

  it "two large numbers in array add to target" do
    numbers = [999999, 12345, 213521, 1000000000000]
    _(@a4.check_add(numbers, 2000000000000)).must_equal true
  end

  it "two negative numbers in array add to odd target" do
    numbers = [-1, -2, -3, -4]
    _(@a4.check_add(numbers, -3)).must_equal true
  end

  it "two negative numbers in array add to even target" do
    numbers = [-1, -2, -3, -4]
    _(@a4.check_add(numbers, -6)).must_equal true
  end

  it "two large negative numbers in array add to target" do
    numbers = [-999999, -12345, -213521, -1000000000000]
    _(@a4.check_add(numbers, -1213520)).must_equal true
  end

  it "adding to zero" do
    numbers = [-1, 999, -256, 1]
    _(@a4.check_add(numbers, 0)).must_equal true
  end

  it "two numbers in array do not add to odd target" do
    numbers = [1, 2, 3, 4]
    _(@a4.check_add(numbers, 9)).must_equal false
  end

  it "two numbers in array do not add to even target" do
    numbers = [1, 2, 3, 4]
    _(@a4.check_add(numbers, 10)).must_equal false
  end

  it "two large numbers in array do not add to target" do
    numbers = [999999, 12345, 213521, 1000000000000]
    _(@a4.check_add(numbers, 999999999999)).must_equal false
  end

  it "two negative numbers in array do not add to odd target" do
    numbers = [-1, -2, -3, -4]
    _(@a4.check_add(numbers, -17)).must_equal false
  end

  it "two negative numbers in array do not add to even target" do
    numbers = [-1, -2, -3, -4]
    _(@a4.check_add(numbers, -1000)).must_equal false
  end

  it "two large negative numbers in array do not add to target" do
    numbers = [-999999, -12345, -213521, -1000000000000]
    _(@a4.check_add(numbers, -1213521)).must_equal false
  end

  it "not adding to zero" do
    numbers = [-1, 999, -256, 2]
    _(@a4.check_add(numbers, 0)).must_equal false
  end

end