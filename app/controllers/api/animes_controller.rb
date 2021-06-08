class Api::AnimesController < ApplicationController
    def index
        array = []
        @animes = Anime.includes(:episodes, :genres).all
        render "api/animes/index"
    end

    def show 
        @anime = Anime.includes(:episodes, :genres).find(params[:id])
        render :show
    end

end