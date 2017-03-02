class ReportsController < ApplicationController
  def index
  end

  def contacts
  	@contacts = Contact.all
  	@title = "Lista de Contatos"
  end

  def user_tracking
    @title = "User Tracking"
  end
end
