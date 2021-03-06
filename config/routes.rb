Rails.application.routes.draw do

  get 'callbacks/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do get "/users/sign_out" => "devise/sessions#destroy" end
  #devise_scope :user do get "/users/sign_in" => "devise/sessions#new" end
  devise_scope :user do get "/users/password" => "devise/passwords#create" end

  # devise_scope :user do
  #   get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end

  ActiveAdmin.routes(self)

  # Just covering my bases here just in case...
  # resources :all_the_things!
  resources :users
  resources :devise
  resources :callbacks
  resources :maps

  resources :schools do
    resources :programs, only: [:create, :destroy, :show, :update]
  end

  # resources :admin
  # resources :profiles
  resources :programs

  get '/programs/:id/edit' =>'programs#edit'

  resources :tags
  resources :faq
  resources :search

  root 'welcome#index'

end
