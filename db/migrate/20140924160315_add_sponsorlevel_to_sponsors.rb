class AddSponsorlevelToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :sponsor_level, :string
  end
end
