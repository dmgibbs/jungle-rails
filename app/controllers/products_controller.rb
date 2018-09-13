class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

  # def soldout?
  #   @product = Product.find params[:id]
  #   if @product.quantity == 0
      
  #   end
  # end

end
