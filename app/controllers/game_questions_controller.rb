class GameQuestionsController < ApplicationController
    def show
        @gamequestion = gamequestion.new
    end
end
