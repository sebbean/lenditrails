class VideosController < ApplicationController

  def index
    redirect_to speakers_path, :status => 301
  end

end