Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'games#index'
resources :users 
resources :games
post '/answer', to: 'games#answer'
end
