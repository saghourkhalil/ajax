class EmailsController < ApplicationController
  def index
  	@emails = Email.all 

  end

  def show
    @email = Email.find(params[:id])
    @email.read = true
  	  respond_to do |format|
	    format.html { redirect_to email_path }
	    format.js
  	end 
  end


  def destroy
    @emails = Email.all
    @email = Email.find(params[:id]).destroy
    
    respond_to do |format|
       format.html { redirect_to email_url }
       format.json { head :no_content }
       format.js   { render :layout => false }
    end
  end
end
