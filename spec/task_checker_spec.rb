# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

# Name of the method to be check_todo
# What paramenters it takes - name is "task" and data type is string
# What does it return? True or false (boolean)
# Any other side effects? None spring to mind!

# 1

# check_todo("")
# returns false because their is no #TODO string

# 2 

# check_todo("Empty the dishwasher")

# returns false. This is a task but no #TODO

# 3

# check_todo("TODO Put on a wash")

# returns false as there is no hashtag before the TODO

#4

# check_todo("# TO DO")

# returns false as it does not have #TODO altogether as one word

#5 

# check_todo("#TODO - Walk the dog")

# returns true as it contains the hash we're looking for

#6 

# check_todo("Feed the cat #TODO")

# returns true as the hash we're looking for is there, but at the end

require 'task_checker'

RSpec.describe "Check for the presence of #TODO in a task" do
    it "#1 - returns false as the string will be empty entirely" do
        result = check_todo("")
        expect(result).to eq false
    end
    it "#2 -returns false as the task does not include #TODO" do
        result = check_todo("Empty the dishwasher")
        expect(result).to eq false
    end
    it "#3 -returns false as the task does not include a HASHTAG before TODO" do
        result = check_todo("TO DO Put on a wash")
        expect(result).to eq false
    end
    it "#4 -returns false as there is spacing between the syllables of #TODO" do
        result = check_todo("# TO DO")
        expect(result).to eq false
    end
    it "#5 -returns true as the #TODO hashtag is present without spacing betweent he syllables" do
        result = check_todo("#TODO - Walk the dog")
        expect(result).to eq true
    end
    it "#6 -returns true as the #TODO hashtag is present, albeit at the end of the string" do
        result = check_todo("Feed the cat #TODO")
        expect(result).to eq true
    end


end   






