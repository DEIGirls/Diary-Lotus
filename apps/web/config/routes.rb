get '/', to: 'home#index'

get '/entries/login', to: "entries#login"
post '/entries/auth', to: 'entries#authenticate'
get '/entries/logout', to: 'entries#logout'

resources :entries
