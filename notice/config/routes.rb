Rails.application.routes.draw do
  devise_for :admins
  devise_for :members
  devise_for :users

  root to: 'homes#top'
  resources :posts do
   resources :comments
  end
  get 'familycodes/searchmember' => 'familycodes#searchmember', as: :searchmember
   get 'familycodes/searchuser' => 'familycodes#searchuser', as: :searchuser
  resources :familycodes
  resources :members
  resources :users
  get 'users/show' => 'users#show'
  resources :admins


end
