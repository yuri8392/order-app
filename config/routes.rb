Rails.application.routes.draw do
  devise_for :users
  root to: "memos#index"
  resources :memos, only: [:index, :new, :create, :destroy,:edit,:update]
  resources :capacities, only: [:index, :new, :create]
  resources :orders, only: [:index]
end
