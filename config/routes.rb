Rails.application.routes.draw do

  root 'shops#index'

  namespace :admin do
    resources :shops
    resources :users
    resources :categories
  end 

  resources :shops
  resources :users
  resources :categories

end
