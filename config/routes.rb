Rails.application.routes.draw do
  get '/users/new'

  resources :pictures
  get '/' => 'pictures#index'
  get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/signup' => 'users#new'
    post '/users' => 'users#create'

  end
