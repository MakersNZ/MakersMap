Rails.application.routes.draw do
  devise_for :users
  
  resources :places
  resources :tags
  resources :people
  

  root to: 'search#index'
end
