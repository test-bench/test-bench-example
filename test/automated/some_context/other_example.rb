require_relative '../automated_init'

context "Some Context" do
  context "Other Example Context" do
    test "Failing test" do
      assert(false)
    end

    test "Passing test" do
      assert(true)
    end
  end
end
