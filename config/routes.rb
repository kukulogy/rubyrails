Rails.application.routes.draw do
  resources :professors do
  	resources :reviews
	end
  resources :records
  get 'home/index'
  root 'classrooms#index'
  resources :classrooms do
		resources :rates
	end

  # root 'class#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
