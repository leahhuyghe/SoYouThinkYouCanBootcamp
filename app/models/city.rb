class City < ActiveRecord::Base
  belongs_to :school
  has_many :schools
end
