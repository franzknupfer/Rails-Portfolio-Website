class ChangeId < ActiveRecord::Migration
  def change
    add_column :projects, :skill_id, :integer
    remove_column :projects, :project_id
  end
end
