require "reading_time"

RSpec.describe "reading_time method" do
    it "calculates reading time at 200wpm" do
        result = reading_time("1 2 3 4 5 6 7 8 9 10")
        expect(result).to eq "3 seconds"
    end
end