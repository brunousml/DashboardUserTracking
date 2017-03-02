class HomeController < ApplicationController
  def index
  	@contacts = Contact.all
  	@title = "Site Exemplo"
  end
end
