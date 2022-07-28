Rails.application.routes.draw do
  root 'home_pages#home'
  get '/home', to: 'home_pages#home'
  get '/help', to: 'home_pages#help'
  get '/about', to: 'home_pages#about'
  resources :users, only: [:new, :show, :create], path_names: {new: 'signup'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
