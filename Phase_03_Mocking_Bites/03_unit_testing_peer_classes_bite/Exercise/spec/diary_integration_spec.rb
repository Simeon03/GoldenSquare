require 'secret_diary'
require 'diary'

RSpec.describe 'diary integration' do
    it 'checks if a locked diary can be passed as argument in secret diary' do
        diary = double :diary_object
        secret_diary = double :secret_diary_object
        allow(diary).to receive(:read).with(secret_diary).and_return("Go away!")
    end

    it 'checks if an unlocked diary can be passed as argument in secret diary' do
        diary = double :diary_object
        secret_diary = double :secret_diary_object
        allow(diary).to receive(:read).with(secret_diary).and_return(secret_diary)
    end
end