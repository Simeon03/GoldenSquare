require 'gratitudes'

RSpec.describe Gratitudes do
    
    it 'checks if the gratitude is formatted correctly' do
        gratitudes = Gratitudes.new
        gratitudes.add("Kindness")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Kindness"
    end

    it 'checks if the 2 gratitudes is formatted correctly' do
        gratitudes = Gratitudes.new
        gratitudes.add("Kindness")
        gratitudes.add("Delivery")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Kindness, Delivery"
    end

end