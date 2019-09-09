Rails.application.routes.draw do
  root 'controller#action'
  resources :profiles, only: [:index, :show, :edit, :update]
  resources :favorites, only: [:index, :show, :new, :create, :destroy]
  resources :messages, only: [:new, :create]
  resources :rooms, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
