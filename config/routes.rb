Rails.application.routes.draw do
  resources :answers
  resources :users
  resources :posts
  resources :replies
  root :to => 'answers#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
