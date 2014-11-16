class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
        t.string 'name'
        t.string 'location'
        t.datetime 'date'
        t.timestamps
    end
  end
  
  def down
    drop_table 'contests'
  end
end
