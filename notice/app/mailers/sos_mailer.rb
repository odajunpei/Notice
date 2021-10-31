class SosMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sos_mailer.send_when_sos.subject
  #
  def send_when_sos(email, user)
    @name = user.name
    @telephone_number = user.telephone_number
      mail(to: email, subject: '[緊急]ご家族様よりSOS投稿がされました。')
  end
end
