class CreateLoveBanks < ActiveRecord::Migration
  def change
    create_table :frank_love_banks do |t|
      t.integer :rating
      t.text :note
      t.references :frank_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
