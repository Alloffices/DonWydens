class ProjectsController < ApplicationController
  	before_action :set_recipient, only: [:new, :create]

	def index
		@projects = Project.all
	end

	def new
		@project = current_user.sent_projects.new

	end

	def create
     	@project.recipient_id = @recipient.id

		@project = current_user.sent_projects.new project_params
		@project.save
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params.require(:project).permit(:title, :description, :userforhire)
	end

	def set_recipient
	   @recipient = User.find params[:user_id]
	end

end
