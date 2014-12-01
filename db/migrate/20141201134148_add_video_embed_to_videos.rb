class AddVideoEmbedToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :video_embed, :text
  end
end
