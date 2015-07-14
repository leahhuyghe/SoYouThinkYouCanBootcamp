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
    @program = Program.new(program_params)
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
    redirect_to root_path, alert: "access denied" unless can? :edit, @program
    @program.slug = nil
    if @program.update(program_params)
      redirect_to program_path(@program)
    else
      render :edit
    end
  end

  def update
    @program.update
    redirect_to program_path(@program)
  end


  private

  def program_params
      params.require(:program).permit([:school_id, :name, :duration_weeks, :price, :max_class_size, :full_time, :format])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end


end
