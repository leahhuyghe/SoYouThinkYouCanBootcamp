class Program < ActiveRecord::Base
  belongs_to :school
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

end
