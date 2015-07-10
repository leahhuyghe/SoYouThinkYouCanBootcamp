Rails.application.routes.draw do

  devise_for :users
  ActiveAdmin.routes(self)
  resources :schools

  resources :programs
  resources :tags
  resources :faq
  resources :search, only: :index

  root 'schools#index'

end
