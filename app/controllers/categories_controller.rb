class CategoriesController < ApplicationController
    before_filter :has_contest

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
            redirect_to contest_path(@contest)
        else
            render 'contests/index'
        end
    end
    
    def edit
        @category = @contest.categories.find(params[:id])
    end
    
    def update
        @category = @contest.categories.find(params[:id])
        if @category.update_attributes(category_params)
            flash[:success] = "Category Updated"
            redirect_to contest_path(@contest)
        else
            render 'categories/edit'
        end
    end
    
    def destroy
    end
    
    def category_params
        params.require(:category).permit(:name)
    end
end
