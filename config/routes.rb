Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/verifylogin', to: 'sessions#create'
  get '/userhome', to: 'sessions#home'
  get '/secret', to: 'secrets#show'
  get '/destroy', to: 'sessions#destroy'
  root 'sessions#login'
end
