class AddConferenceIdToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :conference_id, :integer
  end
end
