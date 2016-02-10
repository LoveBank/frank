module Frank
  class Mood < ActiveRecord::Base
    belongs_to :profile
  end
end
