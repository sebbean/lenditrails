class DropVideosTable < ActiveRecord::Migration
  def change
    drop_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :conference_id
      t.timestamps
    end
  end
end
