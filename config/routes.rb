Rails.application.routes.draw do

  resources :schools
  resources :programs
  resources :tags
  resources :users

  root 'schools#index'


end
