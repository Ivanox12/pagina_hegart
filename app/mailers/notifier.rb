class Notifier < ApplicationMailer::Base
	layout 'notifier'
	default from: "Memoree <notificaciones@memoree.mx>"
	def send_mail(contact_request)
		@contact_request = contact_request
		@name = contact_request.name
		@email = contact_request.email
		@message = contact_request.message
		if contact_request.phone_number.present?
			@phone_number = contact_request.phone_number
		end
		mail(to: "ivan.quevedo.garcia@gmail.com", subject: "Solicitud de contacto de #{contact_request.name}")
	end
end