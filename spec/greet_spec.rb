require 'greet'

RSpec.describe "greet method" do
    it "Says hello, followed by the person's name!" do
        result = greet("Stephen")
        expect(result).to eq "Hello, Stephen!"
    end
end 