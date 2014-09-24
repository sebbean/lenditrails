class ChangeConferenceInfoInSpeakersTable < ActiveRecord::Migration
  def change
    change_column :speakers, :past_speaker, :string
  end
end
