class VideosController < ApplicationController

  def live
  end

  def index
    @videos = Video.all
  end


end