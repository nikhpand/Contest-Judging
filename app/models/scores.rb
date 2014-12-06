class Scores < ActiveRecord::Base
   belongs_to :questions

  # attr_accessible :round_number, :project_id, :judge_id, :question, :score
   #Round number, Project_id, Judge_id, question, score
   def self.insert_record (round_number, project_id, judge_id, question, score)
       s = Scores.new
       s.round_number = round_number
       s.project_id = project_id
       s.judge_id = judge_id
       s.questions = question
       s.score = score
       s.save!
   end
   def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |score|
        csv << score.attributes.values_at(*column_names)
      end
    end
  end
   
   
   
   
end