class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :external_id
      t.string :source
    end
  end
end
