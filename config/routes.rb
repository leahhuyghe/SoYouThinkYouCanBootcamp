Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :schools
  resources :programs
  resources :tags
  resources :users
  resources :faq

  root 'schools#index'


end
