Rails.application.routes.draw do


  get 'users/new'

  resources :answers
  resources :users
  resources :posts
  resources :replies

  root :to => 'answers#index'

end
