module Frank
  class LoveBank < ActiveRecord::Base
    belongs_to :profile
  end
end
