class Questions < ActiveRecord::Base
    belongs_to :question_types
    has_many :scores
end