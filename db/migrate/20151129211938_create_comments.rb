class CreateComments < ActiveRecord::Migration
  def change
    create_table :frank_comments do |t|
      t.text :body
      t.references :frank_profile, index: true, foreign_key: true
      t.references :frank_entry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
