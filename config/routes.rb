Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/edit'

  get 'posts/new'

  get 'posts/show'

  get 'posts/create'

  get 'posts/update'

  get 'posts/destroy'

  resources :cities
  root to: "cities#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
