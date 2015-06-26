class Program < ActiveRecord::Base
  belongs_to :school
  has_many :tags, through: :tagging 
end
