require "sentence_corrector"

RSpec.describe "sentence_corrector method" do
    it "checks if sentence starts with capital letter and ." do
        result = sentence_corrector("This is sentence.")
        expect(result).to eq true
    end

    it "checks if only capital letter, no ." do
        result = sentence_corrector("This is sentence")
        expect(result).to eq "This is sentence."
    end

    it "checks if no capital letter, only ." do
        result = sentence_corrector("this is sentence.")
        expect(result).to eq "This is sentence."
    end

    it "checks if no capital letter and no ." do
        result = sentence_corrector("this is sentence")
        expect(result).to eq "This is sentence."
    end
end