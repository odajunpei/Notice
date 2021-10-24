require 'test_helper'

class WelcomeMemberMailerTest < ActionMailer::TestCase
  test "send_when_signup" do
    mail = WelcomeMemberMailer.send_when_signup
    assert_equal "Send when signup", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
