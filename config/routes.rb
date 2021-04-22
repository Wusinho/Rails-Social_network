Rails.application.routes.draw do
  resources :articles, only: %i[new create destroy show index edit update] 
  resources :categories, only: %i[show new create index]
  devise_for :users
  root 'categories#index'
  put '/article/:id/vote', to: 'articles#vote', as: 'vote'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
