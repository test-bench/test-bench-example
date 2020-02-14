require_relative './automated_init'

context "Arithmetic" do
  value = 11

  context "Multiplication" do
    test "Any value multiplied by zero is zero" do
      assert(value * 0 == 0)
    end
  end

  context "Addition" do
    test "Any value added by zero is the value" do
      assert(value + 0 == value)
    end
  end
end
