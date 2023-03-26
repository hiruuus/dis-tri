Rails.application.routes.draw do
  get 'blogs/index'
  resources :events
  devise_for :users
  resources :users, only: [:show]  
  get 'travels/index' => 'travels#index'
  get 'travels/link' => 'travels#link'
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  resources :travels
  root 'travels#index'
  resources :blogs
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

