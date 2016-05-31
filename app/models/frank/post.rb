module Frank
  class Post < ActiveRecord::Base
    belongs_to :profile
  end
end
