class SchoolsController < ApplicationController
before_action :authenticate_user!
#mount_uploaders :avatars, AvatarUploader



  def index
    if params[:city_search]
      @schools = School.search(params[:city_search])
    else
      @schools = School.all
    end
  end


  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    @school.user = current_user
    if @school.save
      redirect_to school_path(@school)
    else
      render :new
    end

  end

  def edit
    
  end




 # scope :for_city, -> (city) {where (city: city)}
#is the same as below
  def show
    School.for_city(params[:city])
    @school = School.find params[:id]
  end

private

  def school_params
    params.require(:school).permit([:name, :description, :website, :email, :street_address, :city, :country, :postal_code, :facebook, :twitter, :phone_number, :avatar])
  end

  def city_search_params
    params.require(:school).permit([:name, :programs, :city])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end


end
