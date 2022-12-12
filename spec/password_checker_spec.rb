require 'password_checker'

RSpec.describe PasswordChecker do
  context "password is" do
    it 'longer than 8 characters' do
        password_checker = PasswordChecker.new
        result = password_checker.check('123456789')
        expect(result).to eq true
    end

    it "shorter than 8 characters" do
        password_checker = PasswordChecker.new
        expect { password_checker.check('1234') }.to raise_error "Invalid password, must be 8+ characters."
      end
    
  end


end