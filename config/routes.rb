Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :projects
  root 'welcomes#index'
end
