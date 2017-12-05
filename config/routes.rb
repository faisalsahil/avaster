Rails.application.routes.draw do
  
  
  resources :subscriptions
  resources :featuredpackages
  resources :packages
  devise_for :users
  resources :users, only:[:index, :new, :edit]
  resources :roles
  
  resources :countries do
    resources :currencies
  end

  resources :currencies
  resources :categories
  
  
  
  
  root 'dashboard#index'
  # mount ActionCable.server => '/cable'
end