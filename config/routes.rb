Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  get 'works/index'
  get 'works/create'
  root to: "works#new"
  get 'works/break'
  get 'works/drink'
  get 'works/bgm'
  get 'works/edit'
  get 'works/end'
  post 'works/create'
  post 'works/update'
  patch 'works/:id' , to: 'works#update'
  resources :works, only:[:new , :create ,:index,:edit,:update]

 end
