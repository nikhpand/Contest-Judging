class ProjectsController < ApplicationController
 before_filter :authenticate_user!
  def index
    @projects = current_user.projects
  end

  def show
    @project = Project.find(params[:id])
 #   unless @user == current_user || current_user.admin?
 #     redirect_to :back, :alert => "Access denied."
 #   end
  end
end