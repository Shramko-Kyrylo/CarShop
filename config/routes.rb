Rails.application.routes.draw do
  devise_for :users

  root "cars#index"

  resources :home
  resources :cars


  get 'brand', to: 'pages#brand'
  get 'kontakts', to:'pages#kontakts'


end
