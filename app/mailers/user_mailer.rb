

class UserMailer < ApplicationMailer

  DEFAULT_FROM = "no-reply@jungle.com"
 
  def welcome_email#(user)
#    @user = user
 #   @url  = 'http://example.com/login'
    # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    mail(to: DEFAULT_FROM, subject: 'Welcome to My Awesome Site')
  end

  def order_confirmation (email,order)
    @user = email
    @email = email
    @url  = 'http://jungle.com'
    mail(to: @email,
      content_type: "text/html",
      subject: 'Order Confirmation Details')
    end
end