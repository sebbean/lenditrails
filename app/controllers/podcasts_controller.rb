class PodcastsController < ApplicationController

  def eu14
    @eu14 = Conference.find_by(title: "LendIt Europe 2014")
    @eu14podcasts = Podcast.where(conference_id: @eu14.id)
  end

  def go_to_eu14
    redirect_to ('/europe/2014/podcasts'), :status => 301
  end

end