class ContactRequest < ActiveRecord::Base
	validates :name, :email, :message, presence: true 

	after_create :send_email

	private 
	def send_email
		Notifier.send_mail(self).deliver_now
	end
end
