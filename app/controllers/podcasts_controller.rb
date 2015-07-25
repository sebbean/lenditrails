class PodcastsController < ApplicationController

  def index
    @usa15 = Conference.find_by(title: "LendIt USA 2015")
    @usa15podcasts = Podcast.where(conference_id: @usa15.id).reverse!
    @eu14 = Conference.find_by(title: "LendIt Europe 2014")
    @eu14podcasts = Podcast.where(conference_id: @eu14.id).reverse!
  end


  def usa15
    @usa15 = Conference.find_by(title: "LendIt USA 2015")
    @usa15podcasts = Podcast.where(conference_id: @usa15.id)
  end

  def go_to_usa15
    redirect_to ('/usa/2015/podcasts'), :status => 301
  end

  def eu14
    @eu14 = Conference.find_by(title: "LendIt Europe 2014")
    @eu14podcasts = Podcast.where(conference_id: @eu14.id)
  end

  def go_to_eu14
    redirect_to ('/europe/2014/podcasts'), :status => 301
  end

end