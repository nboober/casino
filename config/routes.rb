Rails.application.routes.draw do
  resources :plays
  resources :companies
  resources :games
  resources :users
  get '/', to: "application#home", as: "home"
  get '/tokens', to: "application#tokens", as: "tokens"
  get '/admin', to: "application#admin", as: "admin"
  get '/site_statistics', to: "application#site_statistics", as: "data"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/guesswelcome", to: "guess#welcome"


  post "/answer", to: "guess#answer"

  get "/wordwelcome", to: "word#welcome"

  post "/wordanswer", to: "word#wordanswer"

  post "/wordfinal", to: "word#wordfinal"

  get 'input_count', to: "word#input_count", as: 'input_count'
end
