Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :stories
  get 'users/show', to: 'users#show', as: 'users_show'
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
