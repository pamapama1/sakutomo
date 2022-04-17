Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  get 'works/index'
  root to: "works#index"
  
  resources :items, only:[:new , :create ,:index]

 end
