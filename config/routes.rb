Rails.application.routes.draw do
  resources :plays
  resources :companies
  resources :games
  resources :users
  get '/', to: "application#home", as: "home"

  get "/login", to: "application#login"
  post "/login", to: "application#process_login"
  get "/logout", to: "application#logout"

  get '/tokens', to: "application#tokens", as: "tokens"
  post '/updater', to: "users#updater"
  post '/decrementer/:tokens', to: "games#decrementer"


  get '/admin', to: "application#admin", as: "admin"
  get '/site_statistics', to: "application#site_statistics", as: "data"

  get "/guesswelcome", to: "guess#welcome"
  post "/answer", to: "guess#answer"
  
  get "/wordwelcome", to: "word#welcome"
  post "/wordanwser", to: "word#wordanwser"
  post "/wordfinal",  to: "word#wordfinal"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
