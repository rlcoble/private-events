Rails.application.routes.draw do
  resources :events, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create, :show]
  root 'sessions#new'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
