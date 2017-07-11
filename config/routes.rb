Rails.application.routes.draw do


  get 'users/new'

  resources :answers
  resources :users

end
