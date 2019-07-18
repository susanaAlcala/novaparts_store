class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
    @comment = Comment.new
    @users = User.all
  end
end
