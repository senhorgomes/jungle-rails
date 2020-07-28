require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "verifies that a product with all four fields set, will save" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: 10000, quantity: 1, category: newCategory
      expect(newProduct).to be_valid
    end

    it "cannot be created without name" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: nil, price: 10000, quantity: 1, category: newCategory
      
      expect(newProduct.errors.full_messages).to include("Name can't be blank")
    end

    it "cannot be created without price" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: nil, quantity: 1, category: newCategory
      
      expect(newProduct.errors.full_messages).to include("Price can't be blank")
    end

    it "cannot be created without quantity" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: 10000, quantity: nil, category: newCategory
      
      expect(newProduct.errors.full_messages).to include("Quantity can't be blank")
    end

    it "cannot be created without category" do
      newCategory = Category.create name: "Cars"
      newProduct = Product.create name: "Honda Civic", price: 10000, quantity: 1, category: nil
      
      expect(newProduct.errors.full_messages).to include("Category can't be blank")
    end
  end
end
