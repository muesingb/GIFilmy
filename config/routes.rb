Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'games#intro'
  
  #users routes. Fix this to be in user's controller
  get '/users/leaderboard', to: 'games#leaderboard'
  
  resources :users 
  resources :games
  resources :questions


  #games routes
  post '/answer', to: 'games#answer'
  get '/show_answer', to: 'games#show_answer'
  get '/game/:game_id/end', to: 'games#end_game'
  
  #game_questions routes
  get '/game/:game_id/question/:id', to: 'game_questions#show'
  
  #sessions/login routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
