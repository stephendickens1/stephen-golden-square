require "password_checker"

RSpec.describe PasswordChecker do
    it "returns true when the password is greater or equal to 8 characters" do
        my_password = PasswordChecker.new
        my_password.check("bestpassword")
        expect true
    end
    it "fails when a password has less than 8 characters" do
        my_password = PasswordChecker.new
        expect { my_password.check("badpass") }.to raise_error "Invalid password, must be 8+ characters"
    end
end 