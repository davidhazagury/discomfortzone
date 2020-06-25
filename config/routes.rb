Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events, only: [:index]
  get "/crashed", to: 'pages#crashed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    resources :event_users, only: [:create]
    resources :messages, only: [:create]
  end
  resources :event_users, only: [:index, :update]
end
