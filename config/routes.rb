Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'search' => 'songs#search'
  resources :accounts
  resources :categories
  resources :accounts, only: [:show] do
    #Insert the following
    get :following, :follower, on: :member
  end
  resources :songs do
      get :following, :follower, on: :member
      resources :likes
      resources :comments
      end

  post 'follow/:id' => 'relationships#follow', as: 'follow'
  delete 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  # devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
  #get  'top', to: 'songs#top'

  root "songs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
