OmdbProject::Application.routes.draw do
  resources :movies

  root 'movies#home'

  match '/results', to: 'movies#results',						via: 'get'
end
