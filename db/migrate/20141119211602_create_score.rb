class CreateScore < ActiveRecord::Migration
  def up
    create_table :scores do |t|
      t.integer 'round_number'
      t.integer 'project_id'
      t.references 'questions'
      t.integer 'judge_id'
      t.integer 'score'
    end
  end
  
  def down
    drop_table :scores
  end
end
