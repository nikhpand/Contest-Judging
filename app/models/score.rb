class Score < ActiveRecord::Base
   belongs_to :question
   
   #Round number, Project_id, Judge_id, question, score
   def self.insert_record (round_number, project_id, judge_id, question, score, comment)
       s = Score.new
       s.round_number = round_number
       s.project_id = project_id
       s.judge_id = judge_id
       s.question = question
       s.score = score
       s.comment = comment
       s.save!
   end
   
   def self.exists?(round_number, project_id, judge_id, question)
       users = Score.where(round_number: round_number, project_id: project_id, judge_id: judge_id, question: question)
       if users.count == 0 then
           return false
        else
            return true
       end
   end
   
   def self.update_record(round_number, project_id, judge_id, question, score, comment)
       user = Score.find_by(round_number: round_number, project_id: project_id, judge_id: judge_id, question: question)
       user.score = score
       user.comment = comment
       user.save!
   end
   
#   def self.to_csv(options = {})
#       CSV.generate(options) do |csv|
#           csv << self.column_names
#           all.each do |score|
#               csv << score.attributes.values_at(*column_names)
#           end
#       end
#   end

def Score.to_csv(scores=[], options = {})
      CSV.generate(options) do |csv|
          csv << ['Round Number','Project Name','Username','Question','Score','Comments']
          scores.each do |score|
              csv << [score.round_number,score.project_name,score.user_name,score.question_name,score.score,score.question_comment]
              #score.attributes.values_at(*scores.column_names)
          end
      end
  end

end