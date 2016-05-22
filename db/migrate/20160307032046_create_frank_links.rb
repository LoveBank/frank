class CreateFrankLinks < ActiveRecord::Migration
  def change
    create_table :frank_links do |t|

      t.timestamps null: false
    end
  end
end
