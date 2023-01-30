Rails.application.routes.draw do
  get 'memos/index'
  root to: "memos#index"
  devise_for :users
  
end
