class VideosController < ApplicationController

  def live
  end

  def eu14
    eu = Conference.where(title: 'LendIt Europe 2014').first
    @eu14videos = eu.videos
  end

  def show_eu14
    @video = Video.friendly.find(params[:id])
  end

  def go_to_eu14
    redirect_to ('/europe/2014/videos'), :status => 301
  end

  def usa14
    usa14 = Conference.where(title: 'LendIt USA 2014').first
    @usa14videos = usa14.videos
  end

  def show_usa14
    @video = Video.friendly.find(params[:id])
  end


end
