OmdbProject::Application.routes.draw do
  get "movies/new"
  get "favorites/new"
  resources :searches
  resources :users
  resources :sessions

  root 'searches#home'

  match '/results', to: 'searches#results',					via: 'get'
  match '/signup', 	to: 'users#new', 								via: 'get'
  match '/signin',  to: 'sessions#new',             via: 'get'
end
