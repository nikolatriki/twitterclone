Rails.application.routes.draw do
  root to:'tweets#index'
  get '/tweets', to: 'tweets#index'
  get '/tweets/new', to: 'tweets#new', as: :new_tweet
  get '/tweets/:id', to: 'tweets#show', as: :tweet
  post 'tweets', to: 'tweets#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
