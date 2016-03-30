class BranchsController < ApplicationController
  	def new
  		#@user = User.find(params[:user_id])
  		@branch = Branch.new
  	end

  	def create
    	@user = User.find(params[:user_id])
    	@branch = @user.branches.create(params[:branch])
    end
end
