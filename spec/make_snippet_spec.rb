require "make_snippet"

RSpec.describe "make_snippet method" do
    it "returns 5 words" do
    result = make_snippet("one two three four five")
    expect(result).to eq "one two three four five"
end 
    it "returns up to 5 words as, then returns '...' if there are any more than 5 words" do
        result = make_snippet("One two three four five six")
        expect(result).to eq "One two three four five..."
    end
end 