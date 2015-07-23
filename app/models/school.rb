class School < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode

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
  
  #
  def address
    [street_address, city, country, postal_code].compact.join(", ")
  end



end
