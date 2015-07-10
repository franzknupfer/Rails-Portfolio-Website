class AddImagesToBlog < ActiveRecord::Migration
  def change
    add_attachment :posts, :attached_image
  end
end
