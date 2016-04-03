class BranchsController < ApplicationController
  	def new
  		@branch = Branch.new
  	end

  	def create

		    #@project = Project.new(params[:project])
		    #@project.users << User.find(current_user.id)
			#@user = @current_user
    	@branch = Branch.new(branch_params)
    	@branch.users << User.find(current_user.id)
    	if @branch.save
      		flash[:success] = "Úspěšné přidání"
      		redirect_to :action => 'show', :id => @branch
      		return
    	else
      		flash[:danger] = "Přidání nebylo úspěšné"
      		flash[:color]= "invalid"
    	end
    	render "new"
    end

    def list
    	@branches = Branch.all
    end

    def show
    	@branch = Branch.find(params[:id])
    	@users = @branch.users
    	@others = User.all - @users
    	@machines = @branch.machines
    end

    def removeUser
    	@branch = Branch.find(params[:id])
    	@branch.users.delete(User.find(params[:user_id]))
    	redirect_to :action => 'show', :id => @branch
    end

	def addUser
    	@branch = Branch.find(params[:id])
    	@branch.users << User.find(params[:user_id])
    	redirect_to :action => 'show', :id => @branch
    end    

    def delete
   		Branch.find(params[:id]).destroy
   		redirect_to :controller => 'user', :action => 'show', :id => current_user.id
	end

	def edit
		@branch = Branch.find(params[:id])
	end

	def update
  	@branch = Branch.find(params[:branch][:id])
  	if @branch.update(branch_params)
  		flash[:success] = "Provozovna aktualizována"
    	redirect_to :action => 'show', :id => @branch
  	else
  		flash[:danger] = "Provozovna nebyla aktualizována"
      	render :edit
  	end
  end

    private
  	def branch_params
    	params.require(:branch).permit(:name, :address, :city)
  	end
end
