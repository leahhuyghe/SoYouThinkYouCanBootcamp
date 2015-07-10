class SchoolsController < ApplicationController


  def index
    if params[:city_search]
      @schools = School.search(params[:city_search])
    else
      @schools = School.all
    end
  end

# scope :for_city, -> (city) {where (city: city)}
#is the same as below
  def show
    School.for_city(params[:city])
  end

private

  def school_params
    params.require(:school).permit([:name, :description, :website, :email, :street_address, :city, :country, :postal_code, :facebook, :twitter, :phone_number])
  end

  def city_search_params
    params.require(:school).permit([:name, :programs, :city])
  end


end
