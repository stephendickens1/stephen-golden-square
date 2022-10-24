require 'string_builder'

RSpec.describe StringBuilder do
    it "initially reports string of zero" do
        string = StringBuilder.new
        expect(string.output).to eq ""
    end


    it "adds the string defined to our instance variable" do
        string = StringBuilder.new
        string.add("What's up")
        expect(string.output).to eq "What's up"
    end

    it "Counts the length of the string that has been inputted" do
        string = StringBuilder.new
        string.add("Hello there")
        expect(string.size).to eq 11
    end


    
end 