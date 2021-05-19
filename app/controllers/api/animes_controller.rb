class Api::AnimesController < ApplicationController
    def index
        array = []
        @animes = Anime.includes(:episodes).all
        render "api/animes/index"
    end

    def show 
        @anime = Anime.includes(:episodes).find(params[:id])
        render :show
    end

end