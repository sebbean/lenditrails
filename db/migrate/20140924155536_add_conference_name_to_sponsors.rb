class AddConferenceNameToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :conference, :string
  end
end
