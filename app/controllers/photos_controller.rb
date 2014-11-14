class PhotosController < ApplicationController
  def index
    person = Flickr.people.find("129324015@N07")
    @photos = person.public_photos(sizes: true).map(&:medium500!)
  end
end
