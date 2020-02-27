Rails.application.routes.draw do
  #Sessions routes
  resources :sessions, only: [:new, :create, :destroy]

  #Users routes
  resources :users, only: [:index, :new, :create, :show]

  #Storiesroutes
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
