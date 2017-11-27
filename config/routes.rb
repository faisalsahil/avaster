Rails.application.routes.draw do
  
  
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