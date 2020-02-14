require_relative '../automated_init'

context "Refute Raises" do
  context "Strict (default)" do
    context "Pass" do
      context "Possible Error Not Raised" do
        test do
          refute_raises(KeyError) do
            { :some_key => 'some-value' }.fetch(:some_key)
          end
        end
      end
    end

    context "Failure" do
      context "Possible Error Raised" do
        test do
          refute_raises(KeyError) do
            {}.fetch(:missing_key)
          end
        end
      end
    end

    context "Error" do
      context "Wrong Error Raised" do
        test do
          refute_raises(KeyError) do
            nil.some_method
          end
        end
      end

      context "Subclass of Possible Error Raised" do
        test do
          refute_raises(KeyError.superclass) do # IndexError
            {}.fetch(:missing_key)
          end
        end
      end
    end
  end
end
