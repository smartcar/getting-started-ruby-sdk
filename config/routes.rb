Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get '/login', to: 'home#login'
  get '/exchange', to: 'home#exchange'
  get '/vehicles', to: 'home#vehicles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
