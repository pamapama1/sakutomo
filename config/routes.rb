Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  get 'works/index'
  root to: "works#index"
  get 'works/break'
  get 'works/drink'
  resources :works, only:[:new , :create ,:index]

 end
