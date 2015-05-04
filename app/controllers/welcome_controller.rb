class WelcomeController < ApplicationController
  def homepage
  	@contact_request = ContactRequest.new
  end
end
