Rails.application.routes.draw do
  devise_for :admins
  devise_for :members
  devise_for :users

  root to: 'homes#top'
  namespace :members do
     resources :posts
     resources :comments
  end

  get 'familycodes/search' => 'familycodes#search', as: :search
  namespace :users do
    resources :posts
    resources :comments
  end
  resources :familycodes
  resources :members
  resources :users
  get 'users/show' => 'users#show'
  resources :admins


end
