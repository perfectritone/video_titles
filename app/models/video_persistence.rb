class VideoPersistence < ActiveRecord::Base

  self.table_name = :videos
  self.has_many :titles
end
