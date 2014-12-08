class AddContestIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :contest_id, :integer
  end
end
