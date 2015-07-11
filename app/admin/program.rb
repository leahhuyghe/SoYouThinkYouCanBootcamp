ActiveAdmin.register Program do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


# Limit actions available to your users by adding them to the 'except' array
# actions :all, except: []

# Add or remove filters (you can use any ActiveRecord scope) to toggle their
# visibility in the sidebar
filter :id
filter :name
filter :duration_days
filter :price
filter :max_class_size
filter :full_time
filter :format
filter :school
filter :created_at
filter :updated_at

# Add or remove columns to toggle their visiblity in the index action
index do
  selectable_column
  id_column
  column :id
  column :name
  column :duration_days
  column :price
  column :max_class_size
  column :full_time
  column :format
  column :school
  column :created_at
  column :updated_at
  actions
end

# Add or remove rows to toggle their visiblity in the show action
show do |program|
  row :id
  row :name
  row :duration_days
  row :price
  row :max_class_size
  row :full_time
  row :format
  row :school
  row :created_at
  row :updated_at
end

# Add or remove fields to toggle their visibility in the form

end
