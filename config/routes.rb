# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root 'controller_name#action_name'
  root 'static_pages#home'
  get 'static_pages/help', as: 'static_pages_help'
  get 'static_pages/about', as: 'static_pages_about'
  get 'static_pages/contact', as: 'static_pages_contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :microposts, only: %i[create destroy]
end
