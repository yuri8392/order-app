Rails.application.routes.draw do
  get 'memos/index'
  devise_for :users
  root to: "memos#index"
  resources :memos, only: [:index, :new, :create, :destroy]
end
