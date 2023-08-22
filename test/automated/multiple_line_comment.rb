require_relative 'automated_init'

context "Multiple Line Comment" do
  comment "Some Heading:", <<~TEXT
  Multiline
  comment
  example
  TEXT
end
