class AddAvatarToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :avatars, :string
  end
end
