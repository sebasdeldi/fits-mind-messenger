Rails.application.routes.draw do
  root to: 'messages#index'
  devise_for :users
  post '/', to: 'messages#index'

end
