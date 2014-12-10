class CreateVideos < ActiveRecord::Migration
  def change
    create_table(:videos, force: true) do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.integer :conference_id
      t.text :embed

      t.timestamps
    end
    add_index :videos, :slug, unique: true
  end
end
