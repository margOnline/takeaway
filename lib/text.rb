class Text

  ACCOUNT_SID = 'ACaf6af8863d70c2c6aa4c77579e7bced6'
  AUTH_TOKEN = 'c5251c8b4e84b6e0ae478cb4712bd391'
  FROM_NUMBER = '441903683040'
  TO_NUMBER = '447545190929'

  def twilio_client
    account_sid = TwilioCredentials::ACCOUNT_SID
    auth_token = TwilioCredentials::AUTH_TOKEN
    @twilio_client ||= Twilio::REST::Client.new account_sid, auth_token
  end

  def send(customer, message)
    twilio_client.account.sms.messages.create(
      :from => TwilioCredentials::FROM_NUMBER,
      :to => TwilioCredentials::TO_NUMBER,
      :body => message)
  end


end