class Api::WatchlistsController < ApplicationController 
   
    def create
        
        @watchlist = Watchlist.new(watchlist_params)

        @watchlist.save
    end

    def destroy
        @watchlist = Watchlist.find(params[:id])
        @watchlist.destroy
    end



    private 

    def watchlist_params 
        params.require(:watchlist).permit(:watcher_id, :watched_id)
    end


end