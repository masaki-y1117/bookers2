class RegistrationsController < ApplicationController
  
  def new
  end
  
  def create
    @user = params[:user]
    if @user.save
      UserMailer.with(user: @user).welcome_mail.deliver_later
    end
    redirect_to user_path(@user)
  end

end
