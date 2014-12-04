class PhotosController < ApplicationController

  def eu14
    eu14 = Conference.where(title: 'LendIt Europe 2014').first
    @eu14photos = eu14.photos
  end

end
