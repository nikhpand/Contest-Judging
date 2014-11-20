class GradesheetController < ApplicationController
    #@global_project_id = nil
    
    def show
        @questions = Questions.all
        @project = params[:id]
        @location = ProjectsController.get_project_details(params[:id]).location
        params.merge(:global_project_id => params[:id])
        #@global_project_id = @project
        #@judge_id = 1
    end
    
    def update
        flash[:notice] = "Gradesheet submitted!"
        @questions = Questions.all
        @questions.each do |q|
            #Round number, Project_id, Judge_id, question, score
            #raise params.inspect
            Scores.insert_record(1, params[:id], current_user.id, q, params[q.id.to_s]['score'])
        end
        redirect_to :projects
    end
end