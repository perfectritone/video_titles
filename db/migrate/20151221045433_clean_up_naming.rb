class CleanUpNaming < ActiveRecord::Migration
  def change
    add_timestamps :videos
    remove_reference :titles, :video_id
    add_reference :titles, :video
  end
end
