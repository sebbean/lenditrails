class Video < ActiveRecord::Base
  belongs_to :conference

  extend FriendlyId
  friendly_id :title, use: :slugged
end
