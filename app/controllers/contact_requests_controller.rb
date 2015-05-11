class ContactRequestsController < ApplicationController

  def create
    @contact_request = ContactRequest.new(contact_request_params)
    redirect_to root_url

    if @contact_request.save
      flash[:notice] = "Su mensaje se envio correctamente"
    else
      flash[:alert] = "Favor de verificar su informacion"
    end
  end
  
  def contact_request_params
    params.require(:contact_request).permit(:name, :email, :phone_number, :message)
  end
end