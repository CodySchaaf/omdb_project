OmdbProject::Application.routes.draw do
  get "users/new"
  resources :movies

  root 'movies#home'

  match '/results', to: 'movies#results',						via: 'get'
end
