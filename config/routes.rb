Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :products

  resources :cart_items, only: [:destroy]

  get '/cart', to: 'carts#index'
  get '/cart/add', to: 'carts#add'
end
