class Admin::CategoriesController < ApplicationController
  before_action :authenticate

  def index
    @categories = Category.all.order('id desc')

  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin , :categories]
    else
      render  :new
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :categories], notice: 'Category deleted!'
  end



  private
  def category_params
    params.require(:category).permit(:name, :text)
  end

end