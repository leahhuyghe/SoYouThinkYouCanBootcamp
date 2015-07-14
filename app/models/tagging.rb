class Tagging < ActiveRecord::Base

  belongs_to :program
  belongs_to :tag

  validates :tag_id, uniqueness: {scope: :program_id}

  def show
    @tagging = Tagging.find
  end

  def new
    @tagging = Tagging.new
  end

  private

  def tagging_params
        params.require(:tagging).permit([:tag_id, :program_id,])
  end

end
