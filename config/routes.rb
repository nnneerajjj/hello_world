Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root 'controller_name#action_name'
  root 'static_pages#home', as: 'static_pages_home'
  get 'static_pages/help', as: 'static_pages_help'
  get 'static_pages/about', as: 'static_pages_about'

end
