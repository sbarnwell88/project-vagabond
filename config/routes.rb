Rails.application.routes.draw do

  get 'users/show'

  devise_for :users
  resources :cities do
    resources :posts
     end

  root 'home#index'
  get 'users/show'
end
