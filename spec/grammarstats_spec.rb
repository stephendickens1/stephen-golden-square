require 'grammarstats'

RSpec.describe GrammarStats do
    it "Checks to see if the string has both a starting letter as an uppercase letter and ends with sentence ending punctation!" do
        grammar = GrammarStats.new
        result = grammar.check("This is a string that should pass.")
        expect(result).to eq true
    end 
    it "Has a string that starts with a capital but no punctation" do
        grammar = GrammarStats.new
        result = grammar.check("This is a string with no punctation")
        expect(result).to eq false
    end
    it "has a string that does not start with a capital but does end with punctation!" do
        grammar = GrammarStats.new
        result  = grammar.check("this is a string with no capital letter!")
        expect(result).to eq false
    end
    it "returns a percentage as an integer of the amount of checks that passed" do
        grammar = GrammarStats.new
        grammar.check("This is a string that should be accepted!")
        grammar.check("This is a string that should fail")
        grammar.check("this is also a string that should fail!")
        expect(grammar.percentage_good).to eq 33
    end
    it "returns a percentage as an integer of the amount of checks that passed LOTS THAT DIDNT PASS!" do
    grammar = GrammarStats.new
    grammar.check("This is a string that should be accepted!")
        grammar.check("This is a string that should fail")
        grammar.check("this is also a string that should fail!")
        grammar.check("this is also a string that should fail again!")
        grammar.check("this is also a string that should fail again")
        grammar.check("this is also a string that should fail for the last time")
        expect(grammar.percentage_good).to eq 16
    end 
end