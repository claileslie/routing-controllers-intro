Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome' => 'pages#welcome'

  get '/' => 'pages#welcome'

  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/kitten/:width/:height' => 'pages#kitten'

  get '/kitten/many/:width/:height' => 'pages#kittens'
end
