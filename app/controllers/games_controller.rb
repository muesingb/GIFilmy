class GamesController < ApplicationController
    def index
    end
    
    def show
        #Game.start_game
        @game = Game.find(params[:id])
        session[:answer] = @game.questions.first.title
    end

    def answer
        #flash[:correct] == question.title
        #if game_params[:answer] == question.title
        if game_params[:answer] == session[:answer]
            if session[:score]
              session[:score] = session[:score] + 100
            else
              session[:score] = 0
            end
        end
        redirect_to '/'
    end

private

    def game_params
        params.permit(:answer)
    end
end