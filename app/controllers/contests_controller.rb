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
        render 'new'
        if @contest.save
            #Success
        else
            render 'new'
        end
    end
    
    def contest_params
        params.require(:contest).permit(:name, :location, :date)
    end
end
