class DropVideosAgain < ActiveRecord::Migration
  def up
    drop_table :videos
  end

  def down
  end
end
