require_relative './automated_init'

context "Example Context" do
  test "Pass" do
    assert(true)
  end

  test "Assertion failure" do
    assert(false)
  end

  test "Error" do
    fail "Some error"
  end
end
