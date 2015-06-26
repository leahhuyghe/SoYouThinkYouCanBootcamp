class TagsController < ApplicationController

  belongs_to :programs through: :tagging
  has_many :programs

  def show
    @tag = Tag.find
  end

  def new
    @tag = Tag.new
  end

end
