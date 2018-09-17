class ReviewsController < ApplicationController
  
  # Get    /reviews/new
  
  def new
    @review = Review.new
  end


  
  def create
    
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    @review.user_id = current_user.id
    @review.product_id = @product.id
    if @review.save
      flash[:success] = "Thank you for your review of this item!  "
      redirect_to '/'
    else
      flash[:danger] = "There was an error saving this review."
      redirect_to @product
    end
  end


  # delete /reviews/1

  def destroy
    @review.destroy
  end

 private
   def review_params
    params.require(:review).permit(:description, :rating)
  end
end
