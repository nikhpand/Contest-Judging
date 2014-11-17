class ContestsController < ApplicationController
    def index
        @contests = Contest.all
    end
    
    def show
        id = params[:id]
        @contest = Contest.find(id)
        @categories = @contest.categories
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
    
    def edit 
        @contest = Contest.find(params[:id])
    end
    
    def update
        @contest = Contest.find(params[:id])
        if @contest.update_attributes(contest_params)
            flash[:success] = "Profile Updated"
            redirect_to @contest
        else
            render 'edit'
        end
    end
    
    def destroy
        Contest.find(params[:id]).destroy
        flash[:success] = "User Deleted"
        redirect_to contests_path
    end
    
    def contest_params
        params.require(:contest).permit(:name, :location, :date)
    end
end
