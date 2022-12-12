require 'string_builder'

RSpec.describe StringBuilder do
    
    it 'adds a string to the exisiting one' do
        string_builder = StringBuilder.new
        string_builder.add("Hello")
        result = string_builder.output
        expect(result).to eq "Hello"
    end

    it 'returns the length of the string' do
        string_builder = StringBuilder.new
        string_builder.add("Hello")
        result = string_builder.size
        expect(result).to eq 5
    end

    it 'adds a string to the exisiting one 2' do
        string_builder = StringBuilder.new
        string_builder.add("Good morning")
        result = string_builder.output
        expect(result).to eq "Good morning"
    end

    it 'returns the length of the string 2' do
        string_builder = StringBuilder.new
        string_builder.add("Good morning")
        result = string_builder.size
        expect(result).to eq 12
    end

    it 'adds a string to the exisiting one 3' do
        string_builder = StringBuilder.new
        string_builder.add("")
        result = string_builder.output
        expect(result).to eq ""
    end

    it 'returns the length of the string 3' do
        string_builder = StringBuilder.new
        string_builder.add("")
        result = string_builder.size
        expect(result).to eq 0
    end

end