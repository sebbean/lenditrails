class CreateConference < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :title
      t.timestamps
    end
  end
end
