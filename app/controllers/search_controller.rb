class SearchController < ApplicationController

  def index
    if params[:city_search]
      @results = School.city_search(params[:city_search])
    elsif params[:tags_search]
      @results = Program.tags_search(params[:tags_search])
    end
  end

  def city_search_params
    params.require(:school).permit([:name, :city])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end

end
