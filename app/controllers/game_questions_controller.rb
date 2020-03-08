class GameQuestionsController < ApplicationController
    
    def show #game question show page
        @game = Game.find(params[:game_id])
        @question = @game.questions.find(params[:id])
        if @game.game_over?
            @game.get_score
            redirect_to "/game/#{@game.id}/end"
        else 
            render :'questions/show'
            # redirect_to "questions/#{@question.id}"
        end
    end

    private

    def game_params
        params.require(:game).permit(:answer, :game_id, :score)
    end
end
