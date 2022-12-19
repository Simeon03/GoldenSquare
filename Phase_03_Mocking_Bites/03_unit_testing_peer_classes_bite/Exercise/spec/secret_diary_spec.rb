require 'secret_diary'

RSpec.describe 'secret diary class' do
    it 'checks if the diary can be locked' do
        secret_diary_entry = SecretDiary.new("diary entry")
        secret_diary_entry.lock
        expect(secret_diary_entry.read).to eq "Go away!"
    end

    it 'checks if the diary can be unlocked' do
        secret_diary_entry = SecretDiary.new("diary entry")
        secret_diary_entry.unlock
        expect(secret_diary_entry.read).to eq "diary entry"
    end

    it 'checks if the diary can be unlocked, locked' do
        secret_diary_entry = SecretDiary.new("diary entry")
        secret_diary_entry.unlock
        secret_diary_entry.lock
        expect(secret_diary_entry.read).to eq "Go away!"
    end

    it 'checks if the diary can be unlocked, locked, unlocked' do
        secret_diary_entry = SecretDiary.new("diary entry")
        secret_diary_entry.unlock
        secret_diary_entry.lock
        secret_diary_entry.unlock
        expect(secret_diary_entry.read).to eq "diary entry"
    end
end