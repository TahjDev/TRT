class Api::AnimesController < ApplicationController
    def index
        @animes = Anime.all
        render "api/animes/index"
    end

    def show 
        @anime = Anime.includes(:episodes).find(params[:id])
        render :show
    end

end