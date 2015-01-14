class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :company_name
      t.string :logo_img
      t.string :conference
      t.text :description
      t.string :url
      t.integer :conference_id

      t.timestamps
    end
  end
end
