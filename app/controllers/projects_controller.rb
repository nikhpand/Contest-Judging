class ProjectsController < ApplicationController
 before_filter :authenticate_user!
  before_filter :has_contest

    protected
    def has_contest
        unless (@contest = Contest.find(params[:contest_id]))
            flash[:error] = 'Project must be for an existing contest'
            redirect_to contests_path
        end
    end    
    
    public
    def index
        @projects = @contest.projects
    end

    def new
        @project = @contest.projects.build
    end
  
    def show
        if current_user.admin? then 
            @project = Project.find(params[:id])
        end
 #   unless @user == current_user || current_user.admin?
 #     redirect_to :back, :alert => "Access denied."
 #   end
        if !current_user.admin? then
            redirect_to :gradesheet
        end   
    end
  
    def create
         @project = @contest.projects.build(project_params)
        if @project.save
            flash[:success] = "Successfull"
            redirect_to @contest
        else
            render 'new'
        end
     end

    def self.get_project_details(id)
        return Project.find(id)
    end
    
    def destroy
        @project = @contest.projects.find(params[:id])
        @project.destroy
        redirect_to contest_path(@contest)
    end

    private
  
    def project_params
            params.require(:project).permit!
    end
end