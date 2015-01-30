class Podcast < ActiveRecord::Base
    belongs_to :video
    belongs_to :conference
end