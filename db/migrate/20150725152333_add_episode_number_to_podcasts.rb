class AddEpisodeNumberToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :episode_number, :integer
  end
end
