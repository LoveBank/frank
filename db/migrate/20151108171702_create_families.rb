class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :frank_families do |t|
      t.string :name, index: true

      t.timestamps null: false
    end
  end
end
