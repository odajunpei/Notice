Rails.application.routes.draw do
  get 'inquiry/index'
  get 'inquiry/confirm'
  get 'inquiry/thanks'
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

  #お問い合わせ
  get   'inquiry'         => 'inquiry#index'
  post  'inquiry/confirm' => 'inquiry#confirm'
  post  'inquiry/thanks'  => 'inquiry#thanks'
  
  namespace :admin do
    resources :members
    resources :users
    resources :posts
    resources :familycodes
  end
end
