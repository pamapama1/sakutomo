Rails.application.routes.draw do
  devise_for :users
  get 'work/index'
  root to: "works#index"
 end
