class Program < ActiveRecord::Base
  belongs_to :school
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def self.tags_search(query)
    where("tags LIKE ? OR description LIKE ?", "%#{query}%")
  end
  
end
