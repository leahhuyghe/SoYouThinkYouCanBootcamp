require 'test_helper'

class ProgramsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

    def index
      @programs = Program.all
    end

    def edit
      @program = Program.find(params[:id])
    end

    def show
      @program = Program.find(params[:id])
    end

    def new
      @program = Program.new
    end

    def create
      @program = Program.new(program_params)

      if @program.save
        redirect_to @program
      else
        render 'new'
      end
    end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to program_path
  end

  private

  def find_program
    @program = Program.find(params[:id])
  end

  def tags_search_params
    params.require(:program).permit([:tags])
  end

end
