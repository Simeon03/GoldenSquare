require 'diary'

RSpec.describe 'diary class' do
    it 'checks if it returns the contents of the diary' do
        diary_entry = double :diary_entry_object
        allow(diary_entry).to receive(:read).with("Some contents").and_return("Some contents")
    end
end