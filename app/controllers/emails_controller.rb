class EmailsController < ApplicationController

  def index
    #render html:"<h1>Hello</h1>".html_safe
  end

  def create
    @address = Email.new(params.require(:email).permit(:address))
    if @address.address[/(^[-._a-z0-9]+@(?:[a-z0-9][-a-z0-9]+\.)+[a-z]{2,6}$)/]
      @address.save
      redirect_to @address
    else
      render html:(@address.address + " wrong email format " ).html_safe
    end
  end

  def show
    @address = Email.find(params[:id])
    render html:"You successfully subscribed "+@address.address.html_safe
  end

end
