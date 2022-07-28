Rails.application.routes.draw do
  get 'sessions/new'
  root 'home_pages#home'
  get '/home', to: 'home_pages#home'
  get '/help', to: 'home_pages#help'
  get '/about', to: 'home_pages#about'
  resources :users, only: [:new, :show, :create, :index], path_names: {new: 'signup'}
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :microposts, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
