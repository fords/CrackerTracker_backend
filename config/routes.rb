# frozen_string_literal: true


Rails.application.routes.draw do
  resources :foods, except: %i[new edit]

  post '/foods' => 'foods#create'
  delete '/foods/' => 'foods#destroy'
  patch '/foods' => 'foods#update'
  root "application#index"
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update create]
  # resources :leads, path: ''
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
