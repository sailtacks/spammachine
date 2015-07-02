require 'twilio-ruby'

def send_spam(phone, msg, time)
	time = time.to_i
	@msg_array = Array.new
	time.times do |x|
		@msg_array.push(msg)
	end

	msg = @msg_array.join(' ')

	account_sid = 'AC633a4f798afcb2aba4ae658ab3ddf465'

<<<<<<< HEAD
 @client.account.messages.create({
	:from => '+17862920603',  
	:to => '+13059729195',
	:body => "Hey buddy!"
})
=======
	auth_token = 'dade8c6c18cad71adc0947977dd5edf7'

	@client = Twilio::REST::Client.new account_sid, auth_token

	 @client.account.messages.create({
		:from => '+17862920603',  
		:to => phone,
		:body => msg
	})

end
>>>>>>> 12f188ad96e060ad1bebd862747e1e564419f36a
