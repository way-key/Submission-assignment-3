Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
end
