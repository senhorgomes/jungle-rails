require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "verifies the presence of the new product" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: 10000, quantity: 1, category: newCategory
      expect(newProduct).to be_valid
    end

    it "cannot be created without name" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: nil, price: 10000, quantity: 1, category: newCategory
      
      expect(newProduct.errors.full_messages).to include("Name can't be blank")
    end
  end
end
