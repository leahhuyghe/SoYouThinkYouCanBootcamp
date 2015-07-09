class SchoolsController < ApplicationController

# scope :for_city, -> (city) {where (city: city)}
#is the same as below
  def show
    School.for_city(params[:city])
  end

end
