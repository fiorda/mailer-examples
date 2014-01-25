class UserMailer < ActionMailer::Base
  default from: "fiorda@drp-proto.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome')
  end
end
