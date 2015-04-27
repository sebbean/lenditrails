class AddTrackToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :track, :string
  end
end
