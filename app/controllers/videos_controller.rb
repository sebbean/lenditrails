class VideosController < ApplicationController

  def live
  end

  def index
    # @videos = Video.all
    @europe = Conference.where(title: 'LendIt Europe 2014').first
    @euvideos = @europe.videos
  end

  def show
    @video = Video.friendly.find(params[:id])
  end


end
