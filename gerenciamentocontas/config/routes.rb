Rails.application.routes.draw do
  resources :accounts
  #get 'account/index'
  root 'accounts#index'
  resources :accounttypes
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
