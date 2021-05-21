Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  post 'follow/:id' => 'relationships#follow', as: 'follow' #フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' #フォロー外す
  get 'relationship/follow_index/:user_id' => 'relationships#follow_index', as: 'relationship_follow_index'
  get 'relationship/follower_index/:user_id' => 'relationships#follower_index', as: 'relationship_follower_index'
  get 'search' => 'searches#search'
end