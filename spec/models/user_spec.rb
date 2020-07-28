require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "that user is created" do
      newUser = User.new(name: "Kate Mint", password: "qwerty", email: "Kmint@email.com")
      
      expect(newUser).to be_valid
      puts newUser.email
    end
  end
end
