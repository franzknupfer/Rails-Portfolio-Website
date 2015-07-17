class NewRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.column :recommendation_content, :string
      t.column :recommendation_author, :string

      t.timestamps
    end
  end
end
