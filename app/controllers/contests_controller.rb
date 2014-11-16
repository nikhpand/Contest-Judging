class ContestsController < ApplicationController
    def index
        @contests = Contest.all
    end
    
    def show
        id = params[:id]
        @contest = Contest.find(id)
    end
    
    def new 
        @contest = Contest.new
    end
    
    def create 
        @contest = Contest.new(contest_params)
        if @contest.save
            flash[:success] = "Successfull"
            redirect_to @contest
        else
            render 'new'
        end
    end
    
    def contest_params
        params.require(:contest).permit(:name, :location, :date)
    end
end
