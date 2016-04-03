class MachinesController < ApplicationController
	def new
		@branch = Branch.find(params[:branch_id])
		@machine = Machine.new
	end

	def create
		@branch = Branch.find(params[:machine][:branch_id])
		@machine = Machine.new(machine_params)
		if @machine.save
			@branch.machines << @machine
			flash[:success] = "Úspěšné přidání"
      		redirect_to :action => 'show', :id => @machine
		else
			flash[:danger] = "Přidání nebylo úspěšné"
      		flash[:color]= "invalid"
		end
	end

	def show
		@machine = Machine.find(params[:id])
	end

	private
  	def machine_params
    	params.require(:machine).permit(:name, :category)
  	end
end
