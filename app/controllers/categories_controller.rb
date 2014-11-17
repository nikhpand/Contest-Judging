class CategoriesController < ApplicationController
    before_filter :has_contest, :only =>[:new, :create]

    protected
    def has_contest
        unless (@contest = Contest.find(params[:contest_id]))
            flash[:error] = 'Category must be for an existing contest'
            redirect_to contests_path
        end
    end    
    
    public
    def new
        @category = @contest.categories.build
    end
    
    def create
        @category = @contest.categories.build(category_params)
        if @category.save
            flash[:success] = 'Category created'
            redirect_to contests_path
        else
            render 'contests/index'
        end
    end
    
    def destroy
    end
    
    def category_params
        params.require(:category).permit(:name)
    end
end
