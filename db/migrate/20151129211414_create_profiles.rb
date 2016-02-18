class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :frank_profiles do |t|
      # t.uuid :id, :primary_key => true
      t.string :firstname
      t.string :lastname
      t.string :email, index: true
      t.string :phone

      t.references :frank_family, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
