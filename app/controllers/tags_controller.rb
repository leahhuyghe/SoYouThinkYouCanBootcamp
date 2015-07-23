class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def search
    @tag = Tag.find(params[:tag_search])
    @results = @tag.programs
  end

private

  def tag_params
    params.require(:tagging).permit([:tag_id, :name])
  end

end
