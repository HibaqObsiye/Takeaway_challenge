require 'twilio-ruby'
require 'rubygems'
class Confirmation

    def initialize(order)
        @to = ENV['MY_NUMBER']
        from = ENV['TWILIO_NUMBER']
        @order = order
    end
      
    def send
        account_sid = ENV['TWILIO_ACCOUNT_SID']
        auth_token = ENV['TWILIO_AUTH_TOKEN ']
        client = Twilio::REST::Client.new(account_sid, auth_token)
        
        client.messages.create(
            from: from,
            to: @to,
            body: "Thank you for your order"  
          )
    end
end