class ContactFormController < ApplicationController
include ActiveModel::Model
  def new
  	@contact_form = Contact_form.new
  end

  def create
	begin
		@contact_form = Contact_form.new(params[:contact_form])
	  	@contact_form.request = request
	  	if @contact_form.deliver
	  		flash.now[:notice] = 'THX'
	  	else
	  		render:new
		end
	rescue ScriptError
	flash[:error] = 'SORRY'	 
  end
end
end
