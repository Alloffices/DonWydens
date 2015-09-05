class WelcomesController < ApplicationController
	def index
		@users = User.all
		@project = Project.new
	end

	def show
		@user = User.find(params[:id])
	end

end
