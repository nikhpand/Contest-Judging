class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer 'round_number'
      t.integer 'project_id'
      t.integer 'judge_id'
      t.string 'comment'
    end
  end
  
  def down
    drop_table :comments
  end
end
