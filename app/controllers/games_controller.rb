class GamesController < ApplicationController
    def index
    end

    def game_questions
        @game = Game.find(params[:game_id])
        @question = @game.questions.find(params[:id])

        render :'questions/show'
    end

    def get_answer
        #adds to score, redirects to answer page, 
        #answer page will redirect to next question's show page
        if game_params[:answer] == question_params[:title]
            flash[:feedback] = "Right!"
            if session[:score]
                session[:score] = session[:score] + 100
            else
                session[:score] = 0
            end
        else flash[:feedback] = "Wrong!"
        end

        flash[:correct] = question_params[:title]
        #flash[:game_id] = game_params[:game_id]
        #flash[:next_question] = (question_params[:question_id]).to_i + 1
        flash[:game] = Game.find(game_params[:game_id])
        flash[:question] = Question.find(question_params[:question_id])
       
        redirect_to :action => "show_answer"
    end

    def show_answer
        #@game_id = flash[:game_id]
        @next_question = (flash[:question].values.first.to_i) + 1
        @game_id = flash[:game].values.first
        @question = flash[:question]
        render :'questions/answer'
        #redirect_to question_params[:id]+1
    end

private

    def game_params
        params.require(:game).permit(:answer, :game_id, :score)
    end

    def question_params
        params.require(:question).permit(:title, :question_id)
    end
end