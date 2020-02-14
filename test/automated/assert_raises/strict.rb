require_relative '../automated_init'

context "Assert Raises" do
  context "Strict (default)" do
    context "Pass" do
      context "Expected Error Raised" do
        test do
          assert_raises(KeyError) do
            {}.fetch(:missing_key)
          end
        end
      end
    end

    context "Failure" do
      context "No Error Raised" do
        test do
          assert_raises(KeyError) do
            #
          end
        end
      end
    end

    context "Error" do
      context "Wrong Error Raised" do
        test do
          assert_raises(KeyError) do
            nil.some_method
          end
        end
      end

      context "Subclass of Expected Error Raised" do
        test do
          assert_raises(KeyError.superclass) do # IndexError
            {}.fetch(:missing_key)
          end
        end
      end
    end
  end
end
