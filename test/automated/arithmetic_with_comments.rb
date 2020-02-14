require_relative './automated_init'

context "Arithmetic (With Comments)" do
  value = 11

  comment "Value: #{value}"

  context "Multiplication" do
    result = value * 0

    comment "Result: #{result}"

    test "Any value multiplied by zero is zero" do
      assert(result == 0)
    end
  end

  context "Addition" do
    result = value + 0

    comment "Result: #{result}"

    test "Any value added by zero is the value" do
      assert(value + 0 == value)
    end
  end
end
