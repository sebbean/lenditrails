class VideosController < ApplicationController

  def live
  end

  def index
    @videos = Video.where(conference_id: 1)
  end


end