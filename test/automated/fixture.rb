require_relative './automated_init'

context "Fixture" do
  class ExampleFixture
    include TestBench::Fixture

    attr_reader :arg1, :arg2

    def initialize(arg1, arg2)
      @arg1, @arg2 = arg1, arg2
    end

    def call
      context "Argument #1: #{arg1.inspect}" do
        test "Is 42" do
          assert(arg1.to_i == 42)
        end
      end

      context "Argument #2: #{arg2.inspect}" do
        test "Is 'Hello, world!'" do
          assert(arg2.to_s == 'Hello, world!')
        end
      end
    end
  end

  context "Pass" do
    fixture(ExampleFixture, 42, 'Hello, world!')
  end

  context "Failure" do
    fixture(ExampleFixture, 41, 'Hello, world!')
  end
end
