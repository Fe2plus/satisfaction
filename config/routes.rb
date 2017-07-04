Rails.application.routes.draw do

  get 'answers/index'
  get 'answers/new'

  resources :users

end
