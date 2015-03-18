class AddMiddleNameToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :middle_name, :string
    add_column :speakers, :keynote_vip, :boolean
  end
end
