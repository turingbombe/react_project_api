Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api do
		namespace :v1 do
			post '/login', to: "sessions#create" 
			resources :cards
			resources :users
		end
	end
end