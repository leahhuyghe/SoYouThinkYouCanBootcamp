class SchoolsController < ApplicationController


  def index
    if params[:search]
      @schools = School.search(params[:search])
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




end
