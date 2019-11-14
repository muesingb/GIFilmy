class User < ApplicationRecord
    has_many :games

    def password=(new_password)
      salt = BCrypt::Engine::generate_salt
      hashed = BCrypt::Engine::hash_secret(new_password, salt)
      self.password_digest = salt + hashed
    end

    def authenticate(password)
      salt = password_digest[0..28]
      hashed = BCrypt::Engine::hash_secret(password, salt)
      return nil unless (salt + hashed) == self.password_digest
    end

    def user_highest_score
        @scores = self.games.map {|game| game.score}
        @genres = self.games.map {|game| game.genre}
        @user_highest_score = (@scores.zip(@genres)).sort.reverse.first
    end
end
