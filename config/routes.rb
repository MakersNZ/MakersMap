Rails.application.routes.draw do
  resources :events
  devise_for :users
  
  resources :places
  resources :tags
  resources :people
  

  root to: 'search#index'
end
