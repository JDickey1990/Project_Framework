Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root path
  root 'application#home'
  
  resources :requirements
  resources :projects
  
  #sign up route 
  get '/signup', to: 'users#new'
  
	#sessions routes
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
end
