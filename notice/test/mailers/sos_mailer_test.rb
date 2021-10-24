require 'test_helper'

class SosMailerTest < ActionMailer::TestCase
  test "send_when_sos" do
    mail = SosMailer.send_when_sos
    assert_equal "Send when sos", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
