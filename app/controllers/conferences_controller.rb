class ConferencesController < ApplicationController

  def sharecast
    redirect_to ('/?utm_source=sharecast&utm_medium=video&utm_campaign=europe-2014'), :status => 301
  end

  def china
  end

  def europe
  end

  def usa15
  end

  def nyc15_startup
  end

  def europe_test
  end

end