class Tagging < ActiveRecord::Base

  belongs_to :program
  belongs_to :tag

  validates :tag_id, uniqueness: {scope: :program_id}

end
