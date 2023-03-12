# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :rooms, only: %i[show create], param: :title
  resources :messages, only: %i[create]
  root 'rooms#index'
end
