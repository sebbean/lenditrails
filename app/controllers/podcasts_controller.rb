class PodcastsController < ApplicationController

  def index
    @eu14 = Conference.find_by(title: "LendIt Europe 2014")
    @eu14podcasts = Podcast.where(conference_id: @eu14.id)
  end

end