class ChangeProjectDescription < ActiveRecord::Migration
  def change
    remove_column :projects, :project_description
    add_column :projects, :project_short_description, :string
    add_column :projects, :project_full_description, :string
  end
end
