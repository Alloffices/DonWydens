Rails.application.routes.draw do
  devise_for :users
  resources :users do
  	resources :projects, only: [:new, :create]
  end
  resources :projects, only: [:index, :show, :destroy]

  root 'welcomes#index'

end
