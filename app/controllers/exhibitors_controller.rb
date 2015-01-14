class ExhibitorsController < ApplicationController

  def usa15
    us = Conference.where(title: 'LendIt USA 2015').first
    @usa15_exhibitors = us.exhibitors
  end

end