Rails.application.routes.draw do

  devise_for :users
  ActiveAdmin.routes(self)

  devise_scope :user do get "/users/sign_out" => "devise/sessions#destroy" end
  #devise_scope :user do get "/users/sign_in" => "devise/sessions#new" end
  devise_scope :user do get "/users/password" => "devise/passwords#create" end


  resources :schools
  resources :programs
  resources :tags
  resources :faq
  resources :search, only: :index

  root 'welcome#index'

end
