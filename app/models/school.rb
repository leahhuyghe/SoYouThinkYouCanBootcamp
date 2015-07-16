class School < ActiveRecord::Base

  validates :city, presence: true
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :user
  has_many :programs, dependent: :destroy


  # def self.for_city(city)
  #   where(city: city)
  # end

  def self.city_search(query)
    where("city LIKE ?", "%#{query}%")
  end
  def self.tags_search(query)
    where("tags LIKE ? OR description LIKE ?", "%#{query}%")
  end




end
