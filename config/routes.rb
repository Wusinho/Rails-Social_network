Rails.application.routes.draw do
  resources :articles
  resources :categories
  devise_for :users
  root 'categories#index'
  put '/article/:id/vote', to: 'articles#vote', as: 'vote'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end