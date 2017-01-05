Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :likemovies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'likemovies#index'
end
