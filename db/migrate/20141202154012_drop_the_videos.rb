class DropTheVideos < ActiveRecord::Migration
  def up
    drop_table :videos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
