Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'profile/:user_id' => 'home#profile', as: 'profile'

  root 'home#index'
  resources :posts
  resources :takes
  resources :gives
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
