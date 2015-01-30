class Video < ActiveRecord::Base
  belongs_to :conference
  has_one :podcast

  extend FriendlyId
  friendly_id :title, use: :slugged
end
