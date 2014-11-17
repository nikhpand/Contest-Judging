class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
        t.string 'name'
        t.integer 'contest_id'
        t.timestamps
    end
    add_index :categories, :contest_id
  end
  
  def down
    drop_table :categories
  end
end
