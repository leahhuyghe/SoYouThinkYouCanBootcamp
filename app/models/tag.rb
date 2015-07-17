class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :programs, through: :taggings
  

  validates :name, presence: true, uniqueness: true

end
