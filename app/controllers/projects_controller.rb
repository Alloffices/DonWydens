class ProjectsController < ApplicationController

	def index
		@projects = Project.all
	end

	def new
		@project = current_user.projects.build
	end

	def create
		@project = @user, current_user.projects.build(project_params)
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params.require(:project).permit(:title, :description)
	end

end
