class AddSlugToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :slug, :string
    add_index :speakers, :slug, unique: true
  end
end
