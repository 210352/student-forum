Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts
  resources :topics
  resources :courses
  resources :students

  root to: 'static#index'
  get '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/courses/:id/follow', to: 'courses#follow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
