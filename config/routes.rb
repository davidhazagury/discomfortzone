Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/crashed", to: 'pages#crashed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
end
