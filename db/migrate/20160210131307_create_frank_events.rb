class CreateFrankEvents < ActiveRecord::Migration
  def change
    create_table :frank_events do |t|
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
