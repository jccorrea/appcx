Cxapp::Application.routes.draw do

  resources :sales

  resources :salesmen

  resources :cities

  resources :products

  resources :customers

  resources :purchases

  resources :items

  resources :suppliers

  resources :categories

  resources :productions

	root :to => 'home#index'

	get "session/new"
	get "session/create"
	get "home/index"
	get "home/welcome"

	resources :users
	resource :session



	match 'login' => 'session#new'
	match 'gohampstergo' => 'session#create'
	match 'logout' => 'session#destroy'
	match 'signup' => 'users#new'
end

