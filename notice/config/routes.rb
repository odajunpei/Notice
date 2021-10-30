Rails.application.routes.draw do
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

  #退会処理
  get 'members/leave' => 'members#leave'
  get 'users/leave' => 'users#leave'
  patch 'members/withdraw' => 'members#withdraw', as: :members_withdraw
  patch 'users/withdraw' => 'users#withdraw', as: :users_withdraw

  get 'familycodes/searchuser' => 'familycodes#searchuser', as: :searchuser
  resources :familycodes, only: [:new, :create, :destroy]
  get 'familycodes/result' => 'familycodes#result'
  resources :members
  resources :users
  get 'users/show' => 'users#show'
  resources :admins

  #お問い合わせ
  resources :inquiries, only: [:new, :create, :update], param: :name
  get 'inquiries/:name/:id' => 'inquiries#show'
  get 'inquiries/:name/:id/edit' => 'inquiries#edit'
  get 'admin/sign_in' => 'admin#sign_in'
  namespace :admin do
    resources :members do
      collection do
        get 'search'
      end
    end

    resources :inquiries, only:[:index, :edit, :update] do
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
