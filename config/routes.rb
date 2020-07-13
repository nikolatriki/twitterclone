Rails.application.routes.draw do
  root 'twitterclone#index'
  get '/twitterclone', to: 'twitterclone#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
