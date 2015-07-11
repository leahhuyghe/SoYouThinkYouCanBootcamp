class ProgramsController < ApplicationController

  before_action :find_program, only: [:edit, :update, :destroy, :show]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @program = Program.all
    if params[:tags_search]
      @programs = Program.search(params[:tags_search])
    else
      @programs = Program.all
    end
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(params[:id])
    if @program.save
      redirect_to program_path(@program), notice: "Program created!"
    else
      render :new
    end

  end

  def show
    @program = Program.new
  end

  def edit

  end

  def update
    @program.update
    redirect_to program_path(@program)
  end



  private

  def program_params
      params.require(:program).permit([:name, :tags, :duration, :price, :max_class_size, :schedule, :upcoming_start_dates, :format])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end


end
