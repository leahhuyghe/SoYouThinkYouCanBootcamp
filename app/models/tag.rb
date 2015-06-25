class Tag < ActiveRecord::Base

  belongs_to :tagging
  has_many :taggings
  has_many :programs through: :tagging

end
