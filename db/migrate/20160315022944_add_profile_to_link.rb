class AddProfileToLink < ActiveRecord::Migration
  def change
    add_reference :frank_links, :frank_profile, index: true
    add_foreign_key :frank_links, :frank_profiles
    add_column :frank_links, :to_profile_id, :integer, index: true
  end
end
