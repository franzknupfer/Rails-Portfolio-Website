class Name < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.column :skill_name, :string
      t.column :skill_short_description, :string
      t.column :skill_full_description, :string
      t.column :skill_icon, :string
    end

    create_table :projects do |t|
      t.column :project_name, :string
      t.column :project_description, :string
      t.column :project_link, :string
      t.column :project_image_url, :string
      t.column :project_id, :integer

      t.timestamps
    end
  end
end
