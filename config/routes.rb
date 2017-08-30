Rails.application.routes.draw do
  get 'photos/home'

root :to => 'pages#home'
resources :users
resources :artworks
resources :photos
resources :comments
resources :likes
resources :users do
  member do
    get :following, :followers
  end
end
resources :relationships, only: [:create, :destroy]

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'
end
