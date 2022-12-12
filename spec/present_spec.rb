require 'present'

RSpec.describe Present do
  context "when no contents can be wrapped" do
    it "fails" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it 'wraps and unwraps a value' do
        present = Present.new
        result = present.wrap(5)
        expect(result).to eq 5
    end
    
  end


end
