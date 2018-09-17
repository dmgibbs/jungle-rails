class UsersController < ApplicationController
  def new
    user = User.new
  end

  def show
    user = User.find(params[:id])
  end
  
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
      # Handle a successful save.
    else
      
      redirect_to  '/signup', flash: {error: "There was an error with signing up. Please retry."}
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end


