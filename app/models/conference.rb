class Conference < ActiveRecord::Base
  has_many :videos
  has_many :photos
  # has_many :sponsors
  # has_many :speakers
  # has_many :exhibitors
  # has_many :startups
end
