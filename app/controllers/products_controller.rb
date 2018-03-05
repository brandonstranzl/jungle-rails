class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    # @product = Product.new
    # @review = Review.where(product)
    @new_review = @product.reviews.new


  end

end
