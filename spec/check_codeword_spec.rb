require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "returns the response Correct! Come in if the codeword is horse" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "returns the response Close, but nope. if the codeword starts with an h and the codeword starts with an e" do
    result = check_codeword("house")
    result = check_codeword("helicopterthatendswithe")
    expect(result).to eq "Close, but nope."
    end
    
    it "returns the response WRONG if the codeword is neither of these" do 
    result = check_codeword("horss")
    expect(result).to eq "WRONG!"
    end 
  
end 