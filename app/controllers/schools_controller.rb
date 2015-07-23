class SchoolsController < ApplicationController
before_action :authenticate_user!


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

  def update
    @school = School.find(params[:id])
    if @school.update(school_params)
      redirect_to school_path(@school), notice: "School updated"
    else
      render :edit
    end
  end


  def create
    @school = School.new(school_params)
    @school.user = current_user
    if @school.save
      redirect_to school_path(@school), notice: "School created"
      # format.html { redirect_to school_path(@school), notice: "School created" }
      # format.js   { render  } # this renders: create.js.erb
    else
      format.html { render "/schools/show" }
      format.js   { render js: "alert('failure');"}
    end

  end

  def edit
    #  redirect_to root_path, alert: "access denied" unless can? :edit, @school
    @school = School.find(params[:id])
  end

  def destroy
  end

  def show
    if params[:program_id]
      @program = Program.find(params[:program_id])
      @school = @program.school
    else
      @school = School.find(params[:id])
    end

    @schools = School.all
    @hash = Gmaps4rails.build_markers(@schools) do |school, marker|
    marker.lat school.latitude
    marker.lng school.longitude
  end

  end

private


  def school_params
    params.require(:school).permit([:name, :description, :website, :email, :street_address, :city, :country, :postal_code, :facebook, :twitter, :phone_number, :image])
  end

  def city_search_params
    params.require(:school).permit([:name, :programs, :city])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end




end
