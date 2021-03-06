Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events, only: [:index]
  get "/crashed", to: 'pages#crashed'

  # For LOG-IN
  # get '/user' => "pages#home", :as => :user_root

  # namespace :user do
  #   root :to => "pages#home"
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    resources :event_users, only: [:create]

    resources :favourites, only: [:create, :destroy]


    resources :messages, only: [:create]
    resource :chat, only: [:show]

    resources :reviews,  only: [:new, :create]


  end
  resources :event_users, only: [:index, :update]

  resources :users, only: [:show, :index] do
    resources :goals, only: [:new, :create, :update]
  end
end
