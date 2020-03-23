Rails.application.routes.draw do
  devise_for :users
  # root 'Books#index'
  resources :books, only: [:new, :create, :index, :show]# editとdestroyも必要なんじゃないか？後ほど修正
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
