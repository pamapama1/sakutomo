Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  get 'works/index'
  get 'works/create'
  root to: "works#new"
  get 'works/break'
  get 'works/drink'
  get 'works/bgm'
  get 'works/work_end'
  get 'works/now_work'
  post 'works/create'
  resources :works, only:[:new , :create ,:index]

 end
