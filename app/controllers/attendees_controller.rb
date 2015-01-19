class AttendeesController < ApplicationController

  def usa14
  end

  def go_to_usa15
    redirect_to '/usa/2015/attendees', :status => 301
  end

end