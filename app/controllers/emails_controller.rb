class EmailsController < ApplicationController

  def index
    #render html:"<h1>Hello</h1>".html_safe
  end

  def create
    @address = Email.new(params.require(:email).permit(:address,:name))
   if @address.save
         redirect_to @address
    else
      render html:(@address.address + " wrong email format on null Name" ).html_safe
    end
  end

  def show
    @address = Email.find(params[:id])
    render html:("Thank You "+@address.name+". You successfully subscribed "+@address.address).html_safe
  end

end
