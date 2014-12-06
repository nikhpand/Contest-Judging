class GradesheetsController < ApplicationController
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
            if Score.exists?(1, params[:id], current_user.id, q) then
                Score.update_record(1, params[:id], current_user.id, q)
            #raise params.inspect
            else 
                Score.insert_record(1, params[:id], current_user.id, q, params[q.id.to_s]['score'])
            end
            
            if Comment.exists?(1, params[:id], current_user.id) then
                Comment.update_record(1, params[:id], current_user.id)
            else
                Comment.insert_record(1, params[:id], current_user.id, params[q.id.to_s][])
        end
        redirect_to :projects
    end
end