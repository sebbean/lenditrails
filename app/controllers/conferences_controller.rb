class ConferencesController < ApplicationController

  def eu15
    @china15_speakers = Speaker.where(conference: 'LendIt China 2015')
    @eu15_speakers = Speaker.where(conference: 'LendIt Europe 2015')
    @eu15_speakers = @eu15_speakers.where(featured: true)
  end

  def sharecast
    redirect_to ('/?utm_source=sharecast&utm_medium=video&utm_campaign=europe-2014'), :status => 301
  end

  def china15
    @china15_speakers = Speaker.where(conference: 'LendIt China 2015')
    @sponsors = Sponsor.where(conference: 'LendIt China 2015')
  end

  def go_to_china15
    redirect_to '/china', :status => 301
  end

  def usa16
    @usa15_speakers = Speaker.where(conference: 'LendIt USA 2015')
    @featured = @usa15_speakers.where(featured: true)
  end

  def usa15
    @usa15_speakers = Speaker.where(conference: 'LendIt USA 2015')
    @featured = @usa15_speakers.where(featured: true)
  end

  def go_to_usa15
    redirect_to ('/usa'), :status => 301
  end

  def usa14
    @usa14_speakers = Speaker.where(conference: 'LendIt USA 2014')
    @featured_speakers = @usa14_speakers.where(featured: true)
  end

end