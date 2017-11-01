class EmailsController < ApplicationController

  def index
    #render html:"<h1>Hello</h1>".html_safe
  end

  def create
    @address = Email.new(params.require(:email).permit(:address))
    @address.save
    redirect_to @address
  end

end
