Rails.application.routes.draw do
  get 'post_comments/create/:post_id'=>'post_comments#create'

  get 'post_comments/delete/:post_comment_id' => 'post_comments#delete'

  get 'take_comments/create/:take_id' => 'take_comments#create'

  get 'take_comments/delete/:take_comment_id'=> 'take_comments#delete'

  get 'give_comments/create/:give_id'=> 'give_comments#create'

  get 'give_comments/delete/:give_comment_id' => 'give_comments#delete'
  

  devise_for :users
  get 'home/index'



  root 'home#index'
  resources :posts
  resources :takes
  resources :gives
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
