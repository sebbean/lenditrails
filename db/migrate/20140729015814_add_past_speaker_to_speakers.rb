class AddPastSpeakerToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :past_speaker, :boolean
  end
end
