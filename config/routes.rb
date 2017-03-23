Rails.application.routes.draw do
  root 'searches#search'
  get '/search', to: 'searches#search'
  post '/search', to: 'searches#foursquare'

  # when you registered your app, you set your redirect URL to 'http://localhost:3000/auth'. this is where foursquare is 'sending' users after the login process. lets handle the request
  get '/auth', to: 'session#create' # token will be accessible here

  get '/friends', to: 'searches#friends'

end
