require_relative '../automated_init'

context "Assert Raises" do
  context "Non-Strict" do
    context "Pass" do
      context "Expected Error Raised" do
        test do
          assert_raises(KeyError, strict: false) do
            {}.fetch(:missing_key)
          end
        end
      end

      context "Subclass of Expected Error Raised" do
        test do
          assert_raises(KeyError.superclass, strict: false) do # IndexError
            {}.fetch(:missing_key)
          end
        end
      end
    end

    context "Failure" do
      context "No Error Raised" do
        test do
          assert_raises(KeyError, strict: false) do
            #
          end
        end
      end
    end

    context "Error" do
      context "Wrong Error Raised" do
        test do
          assert_raises(KeyError, strict: false) do
            nil.some_method
          end
        end
      end
    end
  end
end
