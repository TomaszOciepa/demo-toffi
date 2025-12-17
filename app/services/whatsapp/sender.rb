module Whatsapp
    class Sender
      def self.call(chat_id, message)
        uri = ENV.fetch('WHATSAPP_GATEWAY_URL')
        

        Net::HTTP.post(
          uri,
          { to: chat_id, message: message }.to_json,
          "Content-Type" => "application/json"
        )
      end
    end
  end
  