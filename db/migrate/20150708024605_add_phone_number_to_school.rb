class AddPhoneNumberToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :phone_number, :string
  end
end
