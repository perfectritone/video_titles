module Persisted
  class Title < ActiveRecord::Base

    belongs_to :video
  end
end
