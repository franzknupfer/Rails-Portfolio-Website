class CommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :comment_content, :string
      t.column :comment_author, :string
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
