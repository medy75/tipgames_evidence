class SessionController < ApplicationController
  	def new
  	end

  	def create
  		@user = User.find_by(username: params[:session][:username], password:params[:session][:password])
  		if @user #&& @user.authenticate(params[:session][:password])
  			log_in @user
  			redirect_to :controller => 'users', :action => 'show', :id => @user
  		else
  			flash[:danger] = 'Přihlášení nebylo úspěšné'
  			render 'new'
  		end
  	end

  	def destroy
  		log_out
    	redirect_to welcome_path
  	end
end
