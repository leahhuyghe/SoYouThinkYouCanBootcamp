class TaggingsController < ApplicationController

  def create
    @tagging = Tagging.new
    @tagging.program_id = @program.id
    @tagging.tag_id = @tag.id 
  end

end
