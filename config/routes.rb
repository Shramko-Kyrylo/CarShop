Rails.application.routes.draw do
  resources :orders
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root "cars#index"

  resources :home
  resources :cars


  get 'brand', to: 'pages#brand'
  get 'kontakts', to:'pages#kontakts'


end
