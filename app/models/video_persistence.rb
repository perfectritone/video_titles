module Persisted
  class Video < ActiveRecord::Base

    self.has_many :titles
  end
end
