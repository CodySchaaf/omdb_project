OmdbProject::Application.routes.draw do
	resources :searches
	resources :users
	resources :sessions
	resources :favorites, only: [:create, :destroy]

	root 'searches#home'

	match '/results', to: 'searches#results', via: 'get'
	match '/signup', to: 'users#new', via: 'get'
	match '/signin', to: 'sessions#new', via: 'get'
	match '/signout', to: 'sessions#destroy', via: 'delete'
end
