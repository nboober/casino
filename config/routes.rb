Rails.application.routes.draw do
  resources :plays
  resources :companies
  resources :games
  resources :users
  get '/', to: "application#home", as: "home"
  get '/tokens', to: "application#tokens", as: "tokens"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/guesswelcome", to: "guess#welcome"


  post "/answer", to: "guess#answer"

  get "/welcome", to: "word#welcome"




end
