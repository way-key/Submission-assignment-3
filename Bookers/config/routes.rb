Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'books#index'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  get 'top' => 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :index, :update]
  resources :home, only: [:about]
end
