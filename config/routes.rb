Rails.application.routes.draw do
  root to: "users#new"
  resources :users
	resources :clubs do
		member do
			post :join
		end
	end

  get "/login", to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

end
