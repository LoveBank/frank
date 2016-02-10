class CreateFrankAppointments < ActiveRecord::Migration
  def change
    create_table :frank_appointments do |t|
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
