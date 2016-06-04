class CreateFrankInsights < ActiveRecord::Migration
  def change
    create_table :frank_insights do |t|
      t.string :title
      t.text :body
      t.string :love_language
      t.string :category

      t.timestamps null: false
    end
  end
end
