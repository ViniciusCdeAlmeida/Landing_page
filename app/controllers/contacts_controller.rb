class ContactsController < ApplicationController

  def new
  	@contact=Contact.new
  end

  def create
	begin
		@contact=Contact.new(params[:contact])
	  	@contact.request = request
	  	if @contact.deliver
	  		flash.now[:notice] = 'THX'
	  	else
      		flash.now[:error] = 'Cannot send message.'
      		render :new	 
  	  	end
	end
end
end