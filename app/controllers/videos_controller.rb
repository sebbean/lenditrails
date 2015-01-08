class VideosController < ApplicationController

  def live
  end

  def eu14
    eu = Conference.where(title: 'LendIt Europe 2014').first
    @eu14videos = eu.videos
  end

  def show
    @video = Video.friendly.find(params[:id])
  end


end
