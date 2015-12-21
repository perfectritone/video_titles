module Persisted
  class Video < ActiveRecord::Base

    self.table_name = :videos
    self.has_many :titles
  end
end
