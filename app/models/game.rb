class Game < ApplicationRecord
    has_many :game_questions
    has_many :questions, through: :game_questions
    belongs_to :user

    def get_unique_question
        question = Question.all.sample
        if self.questions.include?(question)
            get_unique_question
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
   