require_relative '../automated_init'

context "Block-form Assertion Example" do
  def assert_json(string)
    assert do
      comment "Assert JSON: #{string.to_s[0..100]}"

      assert(string.is_a?(String))

      test "Can be parsed as JSON" do
        refute_raises(JSON::ParserError) do
          JSON.parse(string)
        end
      end
    end
  end

  test "Pass" do
    assert_json('{ "someKey": "some-value" }')
  end

  test "Failure" do
    assert_json('not-a-json-document')
  end
end
