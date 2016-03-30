class SessionController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(username: params[:session][:username], password:params[:session][:password])
  	if @user #&& @user.authenticate(params[:session][:password])
  		redirect_to :controller => 'users', :action => 'show', :id => @user
  	else
  		flash[:danger] = 'Přihlášení nebylo úspěšné'
  		#redirect_to :action => 'show', :id => @user.id
  		#redirect_to users_list_path
  		render 'new'
  	end
  end

  def destroy
  end
end
