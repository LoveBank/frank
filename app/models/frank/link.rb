module Frank
  class Link < ActiveRecord::Base
    belongs_to :profile, :class_name => 'Frank::Profile', :foreign_key => 'frank_profile_id'
    belongs_to :source_profile, :class_name => 'Frank::Profile', :foreign_key => 'to_profile_id'
  end
end
