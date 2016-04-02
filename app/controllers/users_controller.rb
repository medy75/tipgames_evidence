class UsersController < ApplicationController
  	def new
  		@user = User.new
  	end
  	def create
    	@user = User.new(user_params)
    	if @user.save
      		flash[:success] = "Úspěšné přidání"
      		redirect_to :action => 'show', :id => @user
      		return
    	else
      		flash[:danger] = "Přidání nebylo úspěšné"
      		flash[:color]= "invalid"
    	end
    	render "new"
  	end

  	def show
  		@user = User.find(params[:id])
  		@branches = @user.branches
  	end

  	def delete
   		User.find(params[:id]).destroy
   		redirect_to :action => 'list'
	  end

	def list
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def login
		@user = User.find(params[:id])
	end

	def update
  	@user = User.find(params[:user][:id])
  	if @user.update(user_params)
  		flash[:success] = "Profil aktualizován"
    	redirect_to :action => 'show', :id => @user
  	else
      render :edit
  	end
  end

	private
  	def user_params
    	params.require(:user).permit(:username, :name, :password, :email, :phone, :address, :city, :birth_date)
  	end

end
