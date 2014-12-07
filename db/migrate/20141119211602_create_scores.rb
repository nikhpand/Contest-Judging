class CreateScores < ActiveRecord::Migration
  def up
    create_table :scores do |t|
      t.integer 'round_number'
      t.integer 'project_id'
      t.references :question
      t.integer 'judge_id'
      t.integer 'score'
      t.string 'comment'
    end
  end
  
  def down
    drop_table :scores
  end
end
