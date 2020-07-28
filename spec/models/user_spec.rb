require 'rails_helper'

RSpec.describe User, type: :model do
  #Tests for creating new users
  describe 'Validations' do
    it "that user is created when all proper fields are filled" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(newUser).to be_valid
    end

    it "user cannot be created without name" do
      newUser = User.create(name: nil, password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(newUser.errors.full_messages).to include("Name can't be blank")
    end

    it "password and confirmation are required" do
      newUser = User.create(name: "Kate Mint", password: nil, password_confirmation: nil, email: "kmint@email.com")
      expect(newUser).not_to be_valid
    end

    it "password cannot be less than 6 characters in length" do
      newUser = User.create(name: "Kate Mint", password: "qwer", password_confirmation: "qwer", email: "kmint@email.com")
      expect(newUser.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it "password and password_confirmation must match" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwertyui", email: "kmint@email.com")
      expect(newUser.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "user cannot be created without email" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: nil)
      expect(newUser.errors.full_messages).to include("Email can't be blank")
    end

    it "user cannot be created without an unique email" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      newUser2 = User.create(name: "Bob Miller", password: "qwerty", password_confirmation: "qwerty", email: "   KmInt@Email.com")
      expect(newUser2).not_to be_valid
    end
  end
  #Tests for login
  describe '.authenticate_with_credentials' do
    it "newly created users can login" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(User.authenticate_with_credentials("kmint@email.com", "qwerty")).to be_truthy
    end

    it "users must type in their password correctly" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(User.authenticate_with_credentials("kmint@email.com", "asdfgh")).to be_falsey
    end

    it "user can type email in the wrong case" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(User.authenticate_with_credentials("kMiNt@emaIL.com", "qwerty")).to be_truthy
    end

    it "user can type email in the wrong case and start with spaces" do
      newUser = User.create(name: "Kate Mint", password: "qwerty", password_confirmation: "qwerty", email: "kmint@email.com")
      expect(User.authenticate_with_credentials("     kMiNt@emaIL.com", "qwerty")).to be_truthy
    end
  end
end
