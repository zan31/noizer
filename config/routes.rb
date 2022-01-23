Rails.application.routes.draw do
  resources :categories
  resources :songs do
    resources :likes
  end
  # devise_for :users, :controllers => {omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }
  #get  'top', to: 'songs#top'

  root "songs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
