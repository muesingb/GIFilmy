class GamesController < ApplicationController
    def intro
        render :'index'
    end

    def create
        @game = Game.create(user_id: user_params[:user_id])
        @game.questions << Question.all.sample
        redirect_to "/game/#{@game.id}/question/#{@game.questions.first.id}"
    end

    def game_questions
        @game = Game.find(params[:game_id])
        @question = @game.questions.find(params[:id])
        if @game.game_over?
            render :'games/game_over'
        else 
            @game.questions << Question.all.sample
            render :'questions/show'
        end
    end

    def answer
        #adds to score, redirects to answer page, 
        #answer page redirects to next question's show page
        @game = Game.find(game_params[:game_id])
        @game.get_score
        if game_params[:answer] == question_params[:title]
            flash[:feedback] = "Right!"
            if session[:score]
                session[:score] = session[:score] + 10
            else
                session[:score] = 0
            end
        else flash[:feedback] = "Wrong!"
        end

        flash[:correct] = question_params[:title]
        flash[:game] = Game.find(game_params[:game_id])
        flash[:question] = Question.find(question_params[:question_id])
       
        redirect_to :action => "show_answer"
    end

    def show_answer
        @game_id = flash[:game].values.first
        @game = Game.find(@game_id)
        @next_question = @game.questions.last.id
        @question = flash[:question]
        render :'questions/answer'
    end

    def end_game
    end

private

    def game_params
        params.require(:game).permit(:answer, :game_id, :score)
    end

    def question_params
        params.require(:question).permit(:title, :question_id)
    end

    def user_params
        params.require(:user).permit(:user_id)
    end
end