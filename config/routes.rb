Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :schools
  resources :programs
  resources :tags
  resources :users
  resources :faq
  resources :search, only: :index

  root 'schools#index'

end
