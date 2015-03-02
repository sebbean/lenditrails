class ConferencesController < ApplicationController

  def sharecast
    redirect_to ('/?utm_source=sharecast&utm_medium=video&utm_campaign=europe-2014'), :status => 301
  end

  def usa15
  end

  def go_to_usa15
    redirect_to ('/usa'), :status => 301
  end

  def usa14
    @usa14_speakers = Speaker.where(conference: 'LendIt USA 2014')
    @featured_speakers = @usa14_speakers.where(featured: true)
  end

end