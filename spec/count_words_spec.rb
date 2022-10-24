require "count_words"

RSpec.describe "count_words method" do
    it "counts the words in a string" do
    result = count_words("one two three four five")
    expect(result).to eq 5
end 

it "counts the words in a string version 2" do
    result = count_words("one two three four five six seven eight")
    expect(result).to eq 8
end

it "returns an empty string given an empty string" do
    result = count_words("")
    expect(result).to eq 0
end
end