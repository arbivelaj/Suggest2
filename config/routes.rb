Rails.application.routes.draw do
  get 'profiles/show'

  get 'profiles/new'

  get 'profiles/create'

  get 'profiles/edit'

  get 'profiles/update'

  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'comments/update'

  get 'comments/create'

  get 'comments/edit'

  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/new'

  get 'reviews/update'

  get 'reviews/edit'

  devise_for :users
  root to: 'pages#home'

  resources :reviews do
  resources :comments, only: [:new, :create]
end

  resources :profiles, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
