class CreateFrankPosts < ActiveRecord::Migration
  def change
    create_table :frank_posts do |t|
      t.string :title
      t.text :body
      t.references :frank_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
