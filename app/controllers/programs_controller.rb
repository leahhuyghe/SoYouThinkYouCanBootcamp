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
    @program = Program.find(params[:id])
  end

  def edit
    redirect_to root_path, alert: "access denied" unless can? :edit, @program
  end

  def update
    if @program.update(program_params)
      redirect_to program_path(@program), notice: "Program updated"
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def program_params
    params.require(:program).permit([:school_id, :name, :duration_weeks, :price, :max_class_size, :full_time, :format, {tag_ids: []} ])
  end

  def tags_search_params
    params.require(:program).permit([:name, :tags, :school])
  end

  def find_program
    @program = Program.find(params[:id])
  end



end
