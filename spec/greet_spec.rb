require 'greet'

RSpec.describe "greet method " do
    it "interpolates name to return Hello, name!" do
        result = greet("Roger")
        expect(result).to eq "Hello, Roger!"
    end
end