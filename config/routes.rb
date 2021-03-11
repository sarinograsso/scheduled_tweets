Rails.application.routes.draw do

  get 'tweets/index'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/show'
  get 'tweets/edit'
  get 'tweets/update'
  get 'tweets/destroy'
  root to: "main#index"

  get "about", to: "about#index"

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"

  delete "logout", to: "session#destroy"

  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"

  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  resources :twitter_accounts

  resources :tweets

end
