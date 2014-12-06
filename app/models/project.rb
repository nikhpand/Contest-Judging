class Project < ActiveRecord::Base
    belongs_to :category
    has_and_belongs_to_many :users
 #   has_and_belongs_to_many :users, :join_table => "projects_users", :foreign_key => "user_id"
end