class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references   :question_type
      t.string :question
      t.integer :maximum_score

      t.timestamps
    end
  end
  def down
    drop_table 'questions'
  end
end
