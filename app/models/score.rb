class Score < ActiveRecord::Base
   belongs_to :questions
   
   #Round number, Project_id, Judge_id, question, score
   def self.insert_record (round_number, project_id, judge_id, question, score)
       s = Score.new
       s.round_number = round_number
       s.project_id = project_id
       s.judge_id = judge_id
       s.questions = question
       s.score = score
       s.save!
   end
   
   def self.exists?(round_number, project_id, judge_id, question)
       users = Score.where(round_number: round_number, project_id: project_id, judge_id: judge_id, questions: q)
       if users.nil? then
           return False
        else
            return True
       end
   end
   
   def self.update_record(round_number, project_id, judge_id, question, score)
       user = Score.where(round_number: round_number, project_id: project_id, judge_id: judge_id, questions: q)
       user.score = score
       user.save!
   end
end