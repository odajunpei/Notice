class UserMailer < ApplicationMailer

  default from: 'familykamatyo@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'ふぁみりーかまちょへようこそ!!')
  end
end
