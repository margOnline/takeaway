class Text

  ACCOUNT_SID = 'C45709457jfkld485798475jf4857043jf86'
  AUTH_TOKEN = 'a48950C4950kdfjoirtu495847575004'
  FROM_NUMBER = '441123456789'
  TO_NUMBER = '44712311111'

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