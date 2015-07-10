class PostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :post_title, :string
      t.column :post_content, :string

      t.timestamps
    end
  end
end
