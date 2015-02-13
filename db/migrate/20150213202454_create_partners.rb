class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :company_name
      t.string :conference
      t.string :partner_type
      t.string :url
      t.text :description
      t.integer :conference_id
      t.string :logo_img

      t.timestamps
    end
  end
end
