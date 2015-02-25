class AddFeaturedToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :featured, :boolean
  end
end
