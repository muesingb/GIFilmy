class GameQuestionsController < ApplicationController
    def show
        Game.start_game
        @gamequestion = GameQuestion.find(params[:id])
    end

    def answer

    end
end
