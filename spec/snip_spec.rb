require "snip"

RSpec.describe "snip method" do
    it "prints out every word if <= 5" do
        result = snip("a b c d")
        expect(result).to eq "a b c d"
    end

    it "prints out ... if > 5 words" do
        result = snip("a b c d e f")
        expect(result).to eq "a b c d e..."
    end
end