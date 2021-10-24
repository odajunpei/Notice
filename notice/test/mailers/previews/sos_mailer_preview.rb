# Preview all emails at http://localhost:3000/rails/mailers/sos_mailer
class SosMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sos_mailer/send_when_sos
  def send_when_sos
    SosMailer.send_when_sos
  end

end
