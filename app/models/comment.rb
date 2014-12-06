class Comment < ActiveRecord::Base
   
   #belongs_to :questions
   
   #Round number, Project_id, Judge_id, question, score
   def self.insert_record (round_number, project_id, judge_id, comment)
       s = Comment.new
       s.round_number = round_number
       s.project_id = project_id
       s.judge_id = judge_id
       s.comment = comment
       s.save!
   end
   
   def self.exists?(round_number, project_id, judge_id)
       users = Score.where(round_number: round_number, project_id: project_id, judge_id: judge_id)
       if users.nil? then
           return False
        else
            return True
       end
   end
   
   def self.update_record(round_number, project_id, judge_id, comment)
       user = Score.where(round_number: round_number, project_id: project_id, judge_id: judge_id)
       user.comment = comment
       user.save!
   end
end