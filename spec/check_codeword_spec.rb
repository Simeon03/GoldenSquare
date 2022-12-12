require 'check_codeword'

RSpec.describe "Checks the codeword method" do
    it "when the user has entered horse" do
        result = check_codeword('horse')
        expect(result).to eq "Correct! Come in."
    end

    it "when the user has entered a word beginning with h and ending with e" do
        result = check_codeword('hate')
        expect(result).to eq "Close, but nope."
    end

    it "when the user has entered anything else" do
        result = check_codeword("mouse")
        expect(result).to eq "WRONG!"
    end
end