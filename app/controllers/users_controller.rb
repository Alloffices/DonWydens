class UsersController < ApplicationController

	def index
		@users = User.all.order('created_at DESC')
	end


	def show
		@user = User.find(params[:id])
		@project = Project.new
	end

    def sender
      @user = User.find(params[:id])
    end

    def recipient
      @user = User.find(params[:id])
    end

end
