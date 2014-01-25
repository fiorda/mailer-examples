class UsersController < ApplicationController
  def new
    @user = User.first
    UserMailer.welcome_email(@user).deliver
  end
end
