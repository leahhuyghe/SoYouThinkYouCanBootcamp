class SearchController < ApplicationController

  def index
    if params[:city_search]
      @results = School.city_search(params[:city_search])
    elsif params[:tags_search]
      @tag = Tag.find(params[:tags_search])
      @results = @tag.programs
    end
  end

  def city_search_params
    params.require(:school).permit([:name, :city])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end

end
