require 'counter'

RSpec.describe Counter do
    it "initially reports count of zero" do
        counter = Counter.new
        expect(counter.report).to eq "Counted to 0 so far."
    end
    it "will add up many different counts as below" do
        counter = Counter.new
        counter.add(11)
        counter.add(3)
        counter.add(7)
        counter.add(10)
        expect(counter.report).to eq "Counted to 31 so far."
    end 

end 