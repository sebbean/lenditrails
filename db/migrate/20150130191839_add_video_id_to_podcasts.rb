class AddVideoIdToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :video_id, :integer
  end
end
