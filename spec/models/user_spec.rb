require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "verifies that a product with all four fields set, will save" do
      newUser = User.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: 10000, quantity: 1, category: newCategory
      expect(newProduct).to be_valid
    end
  end
end
