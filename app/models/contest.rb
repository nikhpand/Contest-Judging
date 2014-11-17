class Contest < ActiveRecord::Base
    def contest_params
       params.require(:contest).permit(:name, :location, :date)
    end
    
    validates :name, :presence => true, :length => {:maximum =>50}
    validates :location, :presence => true
    validates :date, :presence => true
    
    has_many :categories, :dependent => :destroy
end
