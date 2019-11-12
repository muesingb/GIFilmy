class Game < ApplicationRecord
    has_many :game_questions
    has_many :questions, through: :game_questions
    belongs_to :user

    # def self.start_game
    #     @new_game = Game.create(score: 0)
    #     10.times do |t|
    #         GameQuestion.create(game_id:@new_game, question_id: rand(1..2))
    #     end
    # end

    def get_score 
    end 

    def game_over?
        self.questions.count > 10
    end 
end
