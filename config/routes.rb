Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
root 'matomes#index'

resources :matomes, only:[:new, :create, :show]
resources :users, only: [:edit, :update]

end
