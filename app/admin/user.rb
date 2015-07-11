ActiveAdmin.register User do

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
# filter :id
# filter :email
# filter :encrypted_password
# filter :reset_password_token
# filter :reset_password_sent_at
# filter :remember_created_at
# filter :sign_in_count
# filter :current_sign_in_at
# filter :last_sign_in_at
# filter :current_sign_in_ip
# filter :last_sign_in_ip
# filter :created_at
# filter :updated_at
# filter :first_name
# filter :last_name

# Add or remove columns to toggle their visiblity in the index action
# index do
#   selectable_column
#   id_column
#   column :id
#   column :email
#   column :encrypted_password
#   column :reset_password_token
#   column :reset_password_sent_at
#   column :remember_created_at
#   column :sign_in_count
#   column :current_sign_in_at
#   column :last_sign_in_at
#   column :current_sign_in_ip
#   column :last_sign_in_ip
#   column :created_at
#   column :updated_at
#   column :first_name
#   column :last_name
#   actions
# end

# Add or remove rows to toggle their visiblity in the show action
# show do |user|
#   row :id
#   row :email
#   row :encrypted_password
#   row :reset_password_token
#   row :reset_password_sent_at
#   row :remember_created_at
#   row :sign_in_count
#   row :current_sign_in_at
#   row :last_sign_in_at
#   row :current_sign_in_ip
#   row :last_sign_in_ip
#   row :created_at
#   row :updated_at
#   row :first_name
#   row :last_name
# end

# Add or remove fields to toggle their visibility in the form

end
