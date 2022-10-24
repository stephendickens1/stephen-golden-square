require 'gratitudes'

RSpec.describe "testing the initialisation" do
    it "initially returns an empty array" do
        testing = Gratitudes.new
        expect(testing.format).to eq "Be grateful for: "
    end

    it "adds the array to the defined be grateful for string after several subsequent adds" do
        testing = Gratitudes.new
        testing.add("chips")
        testing.add("eggs")
        testing.add("kittens")
        expect(testing.format).to eq "Be grateful for: chips, eggs, kittens"
    end
   
end 