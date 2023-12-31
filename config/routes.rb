Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/api/user' => 'user#create_user', controller: 'user'
  get '/api/user' => 'user#find_all', controller: 'user'
  get '/api/user/:id' => 'user#find_by_id', controller: 'user'
  patch '/api/user/avatar' => 'user#upload_avatar', controller: 'user'

  post '/api/auth/login' => 'auth#login', controller: 'auth'
  post '/api/auth/verify' => 'auth#verify', controller: 'auth'
end