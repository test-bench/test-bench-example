require_relative '../automated_init'

context "Refute Raises" do
  context "Non-Strict" do
    context "Pass" do
      context "Possible Error Not Raised" do
        test do
          refute_raises(KeyError, strict: false) do
            { :some_key => 'some-value' }.fetch(:some_key)
          end
        end
      end
    end

    context "Failure" do
      context "Possible Error Raised" do
        test do
          refute_raises(KeyError, strict: false) do
            {}.fetch(:missing_key)
          end
        end
      end

      context "Subclass of Possible Error Raised" do
        test do
          refute_raises(KeyError.superclass, strict: false) do # IndexError
            {}.fetch(:missing_key)
          end
        end
      end
    end

    context "Error" do
      context "Wrong Error Raised" do
        test do
          refute_raises(KeyError, strict: false) do
            nil.some_method
          end
        end
      end
    end
  end
end
