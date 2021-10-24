# Preview all emails at http://localhost:3000/rails/mailers/welcome_member_mailer
class WelcomeMemberMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_member_mailer/send_when_signup
  def send_when_signup
    WelcomeMemberMailer.send_when_signup
  end

end
