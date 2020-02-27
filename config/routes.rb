Rails.application.routes.draw do
  #Sessions routes
  resources :sessions, only: [:new, :create, :destroy]
  get 'users/sign_up', to: "users#new", as: 'users'
  post 'users/sign_up', to: "users#create"

  #Users routes
  resources :users, only: [:index, :new, :create]
  get 'users/show'
  delete 'users/logout', to: 'sessions#destroy', as: 'destroy_user_session'

  #Storiesroutes
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
