Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :index, :show, :update]
  resources :books, only: [:edit, :index, :show, :destroy, :create, :update]

  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
