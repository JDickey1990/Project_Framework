Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root path
  root 'sessions#home'
  
  resources :deadlines
  resources :requirements
  resources :projects
  resources :users

    resources :projects do 
      resources :requirements
  end

  get '/resources/:id/activate', to: 'requirements#status', as: "requirement_status"


  #sign up route 
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
	#sessions routes
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # post '/users/:id/projects/new', to: 'projects#create'
end
