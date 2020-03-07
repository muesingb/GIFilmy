Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'games#intro'

  get '/users/leaderboard', to: 'games#leaderboard'

  resources :users 
  resources :games
  resources :questions

  post '/answer', to: 'games#answer'
  get '/show_answer', to: 'games#show_answer'
  get '/game/:game_id/question/:id', to: 'games#game_questions'
  get '/game/end', to: 'games#end_game'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
