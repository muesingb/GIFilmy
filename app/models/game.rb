class Game < ApplicationRecord
has_many :game_questions
has_many :questions, through: :game_questions

    # def self.start_game
    #     @new_game = Game.create(score: 0)
    #     10.times do |t|
    #         GameQuestion.create(game_id:@new_game, question_id: rand(1..2))
    #     end
    # end
end
