Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'

  get '/' => 'pages#welcome'

  get '/about' => 'pages#about'

  get '/contest' => 'pages#contest'

  get '/kitten/:width/:height' => 'pages#kitten', as: 'kitten'

  get '/kitten/many/:width/:height' => 'pages#kittens', as: 'kittens'

  get '/secrets/:magic_word' => 'pages#secrets', as: 'secrets'
end
