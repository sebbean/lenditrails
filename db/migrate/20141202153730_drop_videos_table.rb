class DropVideosTable < ActiveRecord::Migration
  def down
    drop_table :videos
  end
end
