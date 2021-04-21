Rails.application.routes.draw do
  resources :articles, :articles, only: %i[new create destroy show index] 
  resources :categories, only: %i[show new create index]
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'categories#index'
  put '/article/:id/vote', to: 'articles#vote', as: 'vote'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
