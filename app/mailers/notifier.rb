class Notifier < ActionMailer::Base
	layout 'notifier'
	default from: "from@example.com"
	def send_mail(contact_request)
		@contact_request = contact_request
		@name = contact_request.name
		@email = contact_request.email
		@message = contact_request.message
		if contact_request.phone_number.present?
			@phone_number = contact_request.phone_number
		end
		mail(to: "hector@hegart.com", subject: "Solicitud de contacto de #{contact_request.name}")
	end
end