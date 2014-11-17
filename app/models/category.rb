class Category < ActiveRecord::Base
    def category_params
        params.require(:category).permit(:name)
    end
    
    belongs_to :contest
    
    validates :name, :presence => true, :length => { :maximum => 50}
    validates :contest_id, :presence =>true
    default_scope { order('categories.created_at DESC')}
end
