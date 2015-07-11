ActiveAdmin.register School do

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
filter :description
filter :website
filter :email
filter :street_address
filter :city
filter :country
filter :postal_code
filter :facebook
filter :twitter
filter :created_at
filter :updated_at
filter :phone_number

# Add or remove columns to toggle their visiblity in the index action
index do
  selectable_column
  id_column
  column :id
  column :name
  column :description
  column :website
  column :email
  column :street_address
  column :city
  column :country
  column :postal_code
  column :facebook
  column :twitter
  column :created_at
  column :updated_at
  column :phone_number
  actions
end

# Add or remove rows to toggle their visiblity in the show action
show do |school|
  row :id
  row :name
  row :description
  row :website
  row :email
  row :street_address
  row :city
  row :country
  row :postal_code
  row :facebook
  row :twitter
  row :created_at
  row :updated_at
  row :phone_number
end

# Add or remove fields to toggle their visibility in the form

permit_params :name, :description, :website, :email, :street_address, :city, :country, :postal_code, :facebook, :twitter, :created_at, :updated_at, :phone_number


end
