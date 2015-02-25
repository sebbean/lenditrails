class AddAssociateToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :associate, :boolean
  end
end
