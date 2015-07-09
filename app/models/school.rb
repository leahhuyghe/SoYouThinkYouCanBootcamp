class School < ActiveRecord::Base
  belongs_to :user

  has_many :programs

  def self.for_city(city)
    where(city: city)
  end


end
