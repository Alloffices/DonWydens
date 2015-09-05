class UsersController < ApplicationController

	def index
		@users = User.all.order('created_at DESC')
	end


	def show
		@user = User.find(params[:id])
		# @project = @user.projects
		@project = Project.new
	end
end
