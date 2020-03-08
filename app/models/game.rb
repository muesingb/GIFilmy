class Game < ApplicationRecord
    has_many :game_questions
    has_many :questions, through: :game_questions
    belongs_to :user

    def get_unique_question(game_genre)
        #find a random question either from a specific genre or from all genres
        if game_genre == "Random"
            question = Question.all.sample
        else
            question = (Question.select {|question| question.genre == game_genre}).sample
        end
        #this prevents repeat questions
        if self.questions.include?(question)
            get_unique_question(game_genre)
        else 
            self.questions << question
        end 
    end 

    def get_score 
        #count the game questions that are true for a given game & assign score to that game
        score = self.game_questions.select {|gq| gq.correct == true}.count
        self.update(score: score)
    end 

    def game_over? #each game has 5 questions
        self.questions.count > 2
    end

    def self.leaderboard
        #get array of all game scores
        @game_scores = (Game.all.map {|game| game.score * 20})
        #get array of all users
        @users = Game.all.map {|game| game.user.name}
        #matches up game scores array to corresponding users array. i.e. [[80, "Barbara"], [20, "Brad"]]
        (@game_scores.zip(@users)).sort.reverse[0..4]
    end
end
   