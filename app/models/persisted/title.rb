module Persisted
  class Title < ActiveRecord::Base

    self.belongs_to :video
  end
end
