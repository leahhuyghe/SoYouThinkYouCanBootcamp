class SchoolsController < ApplicationController

# scope :for_city, -> (city) {where (city: city)}
#is the same as below
  def show
    School.for_city(params[:city])
  end

private

  def school_params
    params.require(:school).permit([:name, :description, :website, :email, :street_address, :city, :country, :postal_code, :facebook, :twitter, :phone_number])
  end

  def city_params

  end

end
