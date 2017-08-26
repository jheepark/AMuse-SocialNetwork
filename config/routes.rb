Rails.application.routes.draw do
  get 'photos/home'

root :to => 'pages#home'
resources :users
resources :artworks
resources :photos

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'
end
