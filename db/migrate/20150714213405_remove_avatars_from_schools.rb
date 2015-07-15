class RemoveAvatarsFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :avatars, :string
  end
end
