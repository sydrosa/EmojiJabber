Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create' 
  root 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :profiles, only: [:index, :show, :edit, :update]
  resources :favorites, only: [:index, :show, :new, :create, :destroy]
  resources :messages, only: [:new, :create]
  resources :rooms, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
