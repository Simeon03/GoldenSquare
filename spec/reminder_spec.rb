# File: spec/reminder_spec.rb

require 'reminder'

# We use the class name here rather than a string
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  # We would typically have a number of these examples.
  it "reminds the user to do a task" do
    reminder = Reminder.new("Roger")
    reminder.remind_me_to("Go to the shopping")
    result = reminder.remind()
    expect(result).to eq "Go to the shopping, Roger!"
  end
end