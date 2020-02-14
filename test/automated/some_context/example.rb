require_relative '../automated_init'

context "Some Context" do
  context "Example Context" do
    test "Some passing test" do
      assert(true)
    end

    test "Other passing test" do
      assert(true)
    end
  end
end
