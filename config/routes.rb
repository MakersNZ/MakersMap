Rails.application.routes.draw do
  resources :tags
  devise_for :people
  resources :people
  resources :people
  root to: 'visitors#index'
end
