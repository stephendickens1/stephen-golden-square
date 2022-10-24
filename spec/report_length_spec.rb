require 'report_length'

RSpec.describe "Check character length method" do
    it "will return the length of the report_length argument" do
        result = report_length("length")
        expect(result).to eq "This string was 6 characters long."
    end
    it "will return the length of the report_length argument" do
        result = report_length("four")
        expect(result).to eq "This string was 4 characters long."
    end 

end 