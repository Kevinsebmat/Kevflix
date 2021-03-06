class Api::MoviesController < ApplicationController

  
    private
    def movie_params
        params.require(:movie).permit(:title, :description, :year, :duration, :maturity_rating, :director, :cast, :genre_id, :trailer, :thumbnail, :logo)
    end
end