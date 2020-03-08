class QuestionsController < ApplicationController
    def show
        @game = Game.find(params[:game_id])
        @question = @game.questions.find(params[:id])
        #either redirect to end game screen or render the question
        if @game.game_over?
            @game.get_score
            redirect_to "/game/#{@game.id}/end"
        else 
            render :'questions/show'
        end
    end

    private

    def game_params
        params.require(:game).permit(:answer, :game_id, :score)
    end
end