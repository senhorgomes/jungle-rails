require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "verifies that a product with all four fields set, will save" do
      newUser = User.create name: "Cars", password_digest: "qwerty", email: "     Atl@.com"
      # expect(newProduct).to be_valid
      puts newUser.email
    end
  end
end
