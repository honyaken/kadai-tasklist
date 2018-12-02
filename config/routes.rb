Rails.application.routes.draw do
 
  root to: 'toppages#index'

  get 'index', to:'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  
  

end
