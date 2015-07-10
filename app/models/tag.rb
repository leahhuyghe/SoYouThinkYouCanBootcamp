class Tag < ActiveRecord::Base

  belongs_to :tagging
  has_many :taggings
  has_many :programs, through: :taggings

  validates :name, presence: true

end
