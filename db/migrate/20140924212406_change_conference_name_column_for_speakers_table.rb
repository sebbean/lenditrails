class ChangeConferenceNameColumnForSpeakersTable < ActiveRecord::Migration
  def change
    rename_column :speakers, :past_speaker, :conference
  end
end
