class QuestionsController < ApplicationController
    before_filter :authenticate_user!
    def index
        @questions = Question.all
    end
    
    def show
        id = params[:id]
        @question = Question.find(id)
    end
    
    def new 
        @question = Question.new
    end
    
    def create 
        @question = Question.new(question_params)
        if @question.save
            flash[:success] = "Successfull"
            redirect_to @question
        else
            render 'new'
        end
    end
    
    def edit 
        @question = Question.find(params[:id])
    end
    
    def update
        @question = Question.find(params[:id])
        if @question.update_attributes(question_params)
            flash[:success] = "Question Updated"
            redirect_to @question
        else
            render 'edit'
        end
    end
    
    def destroy
        Question.find(params[:id]).destroy
        flash[:success] = "Question Deleted"
        redirect_to questions_path
    end
    
    def question_params
        params.require(:question).permit(:question, :question_types, :maximum_score, :question_type_id)
    end
end
