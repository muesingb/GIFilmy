class Question < ApplicationRecord
    has_many :game_questions
    has_many :games, through: :game_questions

    def simplify_title
        complicated_answer = self.title.split(" ")
        stopwords = /\b(?:#{ %w[to and or the a in of].join('|') })\b/i
        clean_array = complicated_answer.join(' ').gsub(stopwords, '').split.map {|word| word.downcase}
    end
end
