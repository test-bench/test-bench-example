require_relative '../automated_init'

context "Block-form Assertions" do
  comment "Output level: #{TestBench::Output::Build::Defaults.level}"

  test "Pass" do
    assert do
      comment "This comment appears only at the debug output level"

      assert(true)
    end
  end

  context "Failure" do
    test do
      assert do
        comment "This comment appears at the pass and debug output levels"

        assert(false)
      end
    end

    test "Nested output" do
      assert do
        context "Some Context" do
          test "Some passing test" do
            assert do
              comment "This comment appears at even the pass output level, since it's inside a failed block-form assertion"
            end
          end

          test "Some failing test" do
            assert(false)
          end

          context "Some Inner Context" do
            test "Another passing test" do
              assert(true)
            end

            test "Another failing test" do
              assert(false)
            end
          end
        end
      end
    end
  end
end
