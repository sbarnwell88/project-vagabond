Rails.application.routes.draw do

  resources :cities do
    resources :posts
     end
  root to: "cities#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
