class ReplyMailer < ApplicationMailer
  default from: "familykamatyo@gmail.com"

  def reply_inquiry(inquiry)
    @inquiry = inquiry
    mail(:to => inquiry.email, subject: '「Warm」のお問い合わせ事項に回答します。')
  end
end
