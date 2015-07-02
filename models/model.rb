require 'twilio-ruby'

account_sid = 'AC633a4f798afcb2aba4ae658ab3ddf465'

auth_token = 'dade8c6c18cad71adc0947977dd5edf7'

@client = Twilio::REST::Client.new account_sid, auth_token

 @client.account.messages.create({
	:from => '+17862920603',  
	:to => '+13059729195',
	:body => "Hey buddy!"
})