post '/entries/auth', to: 'entries#authenticate'
get '/', to: 'home#index'
get '/entries/login', to: "entries#login"
resources :entries
