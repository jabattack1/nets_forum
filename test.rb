require 'twilio-ruby'

account_sid = 'AC8ccdfba43b48b732db581898a686e415'
auth_token = '649f8f15e69e03d22e77c4cea5b7f13c'
client = Twilio::REST::Client.new account_sid, auth_token
 
message = client.account.messages.create(:body => "Jenny please?! I love you <3",
    :to => "+15516893517",
    :from => "+13477688810")
    puts message