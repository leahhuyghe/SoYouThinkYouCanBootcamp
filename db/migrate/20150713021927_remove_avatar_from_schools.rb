class RemoveAvatarFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :avatar, :string
  end
end
