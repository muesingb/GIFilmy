Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'games#index'
resources :users 
resources :games
post '/get_answer', to: 'games#get_answer'
get '/show_answer', to: 'games#show_answer'
get '/game/:game_id/question/:id', to: 'games#game_questions'
resources :questions
end
