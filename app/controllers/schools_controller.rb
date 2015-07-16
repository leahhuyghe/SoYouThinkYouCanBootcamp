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

      format.html { redirect_to school_path(@school), notice: "School created" }
      format.js   { render  } # this renders: create.js.erb
    else
      format.html { render "/schools/show" }
      format.js   { render js: "alert('failure');"}
    end

  end

  def edit

  end

  def destroy

  end



#is the same as below
  def show
  # scope :for_city, -> (city) {where (city: city)}
    School.for_city(params[:city])
    @school = School.friendly.find params[:id]
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

  def for_city
    params.require(:school).permit([:city])
  end



end
