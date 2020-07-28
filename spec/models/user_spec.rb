require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "that user is created" do
      newUser = User.create name: "Kate Mint", password: "qwerty", email: "kmint@email.com"
      
      expect(newUser).to be_valid
    end
  end
end
