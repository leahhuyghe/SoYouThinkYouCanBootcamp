class WelcomeController < ApplicationController

  def index
    @programs = Program.all
    @school = School.all
  end


end
