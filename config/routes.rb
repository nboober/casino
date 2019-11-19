Rails.application.routes.draw do
  resources :credit_cards
  resources :plays
  resources :companies
  resources :games
  resources :users
  root "application#home", as: "home"

  get "/login", to: "application#login"
  post "/login", to: "application#process_login"
  get "/logout", to: "application#logout"

  get '/tokens', to: "application#tokens", as: "tokens"
  post '/updater', to: "users#updater"
  post '/decrementerguess', to: "games#decrementerguess"
  post '/decrementerword', to: "games#decrementerword"
  
  get '/cash', to: "application#cash"
  post '/cashin', to: "users#cashin"
 


  get '/admin', to: "application#admin", as: "admin"
  get '/site_statistics', to: "application#site_statistics", as: "data"

  get "/guesswelcome", to: "guess#welcome"
  post "/answer", to: "guess#answer"
  
  get "/wordwelcome", to: "word#welcome"

  post "/wordanswer", to: "word#wordanswer"

  post "/wordfinal", to: "word#wordfinal"

end
