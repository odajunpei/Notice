Rails.application.routes.draw do
  get 'inquiry/index'
  get 'inquiry/confirm'
  get 'inquiry/thanks'
  devise_for :admins
  devise_for :members,  controllers: {
    registrations: "members/registrations"
  }
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  root to: 'homes#top'
  resources :posts do
   resources :comments
  end
  get 'familycodes/searchmember' => 'familycodes#searchmember', as: :searchmember
  get 'familycodes/searchuser' => 'familycodes#searchuser', as: :searchuser
  resources :familycodes, only: [:new, :create, :destroy]
  get 'familycodes/result' => 'familycodes#result'
  resources :members
  resources :users
  get 'users/show' => 'users#show'
  resources :admins

  #お問い合わせ
  get   'inquiry'         => 'inquiry#index'
  post  'inquiry/confirm' => 'inquiry#confirm'
  post  'inquiry/thanks'  => 'inquiry#thanks'

  get 'admin/sign_in' => 'admin#sign_in'
  namespace :admin do
    resources :members do
      collection do
        get 'search'
      end
    end
    resources :users do
     collection do
      get 'search'
     end
    end
    resources :posts, controllers: {
    registrations: "posts"
  }
    resources :familycodes do
      collection do
        get 'search'
      end
    end
  end
end
