module Persisted
  class Video < ActiveRecord::Base

    table_name = :videos
    has_many :titles
  end
end
