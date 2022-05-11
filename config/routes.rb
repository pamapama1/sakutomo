Rails.application.routes.draw do
  devise_for :users
  get 'breaks/edit'
  get 'users/index'
  get 'works/index'
  get 'works/create'
  #root to: "works#chart"
  root to: "works#new"
  get 'works/break'
  get 'works/drink'
  get 'works/bgm'
  get 'works/evaluation'
  get 'works/edit'
  get 'works/works_end'
  post 'works/create'
  post 'works/update'
  post 'breaks/create'
  post 'breaks/update'
  get 'break/new'
  patch 'breaks/:id' , to: 'breaks#update'
  patch 'works/:id' , to: 'works#update'
  resources :works do
    resources :breaks
  end
    resources :breaks, only: [:new , :create ,:index,:edit,:update]
    resources :works, only: [:new , :create ,:index,:edit,:update]do
    member do
      get 'work_end'
    end
  end

 end
