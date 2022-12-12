require "count_words"

RSpec.describe "count_words method" do
    it "returns amount of words in string" do
        result = count_words("1 2 3 4 5")
        expect(result).to eq 5
    end

    it "returns 0 if no words" do
        result = count_words("")
        expect(result).to eq 0
    end
end