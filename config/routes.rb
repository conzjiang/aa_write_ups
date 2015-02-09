Rails.application.routes.draw do
  root to: 'home#index'

  get 'ruby/private-vs-protected', to: 'ruby#methods'
  get 'heroku/node', to: "heroku#node"

  resources :git, only: [:index, :show]
end
