class ProjectsController < ApplicationController
 before_filter :authenticate_user!
  def index
    @projects = current_user.projects
  end

  def new
   @project = Project.new
  end
  
  def show
    @project = Project.find(params[:id])
 #   unless @user == current_user || current_user.admin?
 #     redirect_to :back, :alert => "Access denied."
 #   end
  end
  
  def create
     @project = Project.new(project_params)
        if @project.save
            flash[:success] = "Successfull"
            redirect_to @project
        else
            render 'new'
        end
  end
  
    def project_params
        params.require(:project).permit(:name, :location)
    end
    
end