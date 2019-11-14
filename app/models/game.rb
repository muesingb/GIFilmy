class Game < ApplicationRecord
    has_many :game_questions
    has_many :questions, through: :game_questions
    belongs_to :user

    def get_unique_question(game_genre)
        if game_genre == "Random"
            question = Question.all.sample
        else
            question = (Question.select {|question| question.genre == game_genre}).sample
        end

        if self.questions.include?(question)
            get_unique_question(game_genre)
        else 
            self.questions << question
        end 
    end 

    def get_score 
        score = self.game_questions.select {|gq| gq.correct == true}.count
        self.update(score: score)
    end 

    def game_over?
        self.questions.count > 5
    end 
end
   