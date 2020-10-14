class TriviaController < ApplicationController

    def index
        @trivia = Trivium.all

        render json: @trivia
    end

    def show
        @trivium = Trivium.find(params[:id])

        render json: @trivium
    end
    
end
