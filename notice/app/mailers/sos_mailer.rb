class SosMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sos_mailer.send_when_sos.subject
  #
  def send_when_sos(current_user)
    user = current_user
    mail_members = Member.where(familycode_id: user.familycode_id)
    @name = user.name
    @telephone_number = user.telephone_number
    if mail_members.present?
      mail_members.each do |member|
        mail(to: member.email, subject: '[緊急]ご家族様よりSOS投稿がされました。')
      end
    end
  end
end
