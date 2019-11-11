class GameQuestionsController < ApplicationController
    def show
        @gamequestion = GameQuestion.find(params[:id])
    end
end
