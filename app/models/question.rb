class Question < ActiveRecord::Base
    belongs_to :question_type
    has_many :score
end

