Rails.application.routes.draw do
  resources :single_files
  resources :repositories
  devise_for :users
  resources :users

  get '/', to: redirect('/repositories/1')
end
