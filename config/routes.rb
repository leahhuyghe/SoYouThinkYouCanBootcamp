Rails.application.routes.draw do

  resources :schools
  resources :programs
  resources :tags
  resources :users
  resources :faq

  root 'schools#index'


end
