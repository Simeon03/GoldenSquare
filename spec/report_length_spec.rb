require 'report_length'

RSpec.describe "Checks report length method " do
    it "when the user types a five letter word" do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long."
    end

    it "when the user types nothing" do
        result = report_length("")
        expect(result).to eq "This string was 0 characters long."
    end

    it "when the user types a three letter word" do
        result = report_length("bud")
        expect(result).to eq "This string was 3 characters long."
    end
end