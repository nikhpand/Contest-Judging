class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.references   :question_type
      t.string    'question'
      t.integer   'maximum_score'
      t.string    'comment'
    end
  end
  
  def down
    drop_table :questions
  end
end
