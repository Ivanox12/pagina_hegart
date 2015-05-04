class ContactRequestsController < ApplicationController

  def create
    @contact_request = ContactRequest.new(contact_request_params)
    redirect_to root_path
  end
  
  def contact_request_params
    params.require(:contact_request).permit(:name, :email, :phone_number, :message )
  end
end