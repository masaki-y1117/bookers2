Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'homes#top'
  get 'about' => 'homes#about'
  resources :users, only: [:index, :create, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
end
