class HomeController < ApplicationController
  def index
  	@contacts = Contact.all
  	@title = "Contatos"
  end
end
