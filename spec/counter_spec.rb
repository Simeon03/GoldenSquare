require 'counter'

RSpec.describe Counter do
    it "count to 6" do
        counter = Counter.new
        counter.add(6)
        result = counter.report
        expect(result).to eq "Counted to 6 so far."
    end

    it "count to 9" do
        counter = Counter.new
        counter.add(9)
        result = counter.report
        expect(result).to eq "Counted to 9 so far."
    end

end