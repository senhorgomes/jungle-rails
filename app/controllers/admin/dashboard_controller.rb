class Admin::DashboardController < ApplicationController
  before_filter :authenticate

  def show
    @product_count = Product.count
    @category_count = Product.count
  end
end
