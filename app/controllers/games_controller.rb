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
            @game.get_score
            render :'questions/show'
        end
    end

    def answer
        #adds to score, redirects to answer page, 
        #answer page redirects to next question's show page
        @game = Game.find(game_params[:game_id])
        @game_question = @game.game_questions.last
        @question = Question.find_by(title: question_params[:title])
        @simple_answer = @question.simplify_title
        
        #complicated_answer = game_params.split(" ")
        #stopwords = /\b(?:#{ %w[to and or the a in of].join('|') })\b/i
        #user_answer_simple = complicated_answer.join(' ').gsub(stopwords, '').split.map {|word| word.downcase}
        
        if user_answer_simple == @simple_answer
            flash[:feedback] = "🎊Way to go!🎉"
            @game_question.update(correct: true)
        else flash[:feedback] = "NOPE sorry! 😢"
        end

        flash[:correct] = question_params[:title]
        flash[:game] = Game.find(game_params[:game_id])
        flash[:question] = Question.find(question_params[:question_id])
       
        redirect_to :action => "show_answer"
    end

    def show_answer
        @game_id = flash[:game].values.first
        @game = Game.find(@game_id)

        unless @game.game_over? 
            @game.get_unique_question   
        end

        @next_question = @game.questions[-1].id
        @question = flash[:question]

        render :'questions/answer'
    end

    def leaderboard
        #@game_scores = (Game.all.map {|game| game.score}).sort.reverse
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