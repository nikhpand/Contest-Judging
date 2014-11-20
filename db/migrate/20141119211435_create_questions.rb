class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.references   'question_types'
      t.string    'question'
      t.integer   'maximum_score'
    end
  end
  
  def down
    drop_table :questions
  end
end
