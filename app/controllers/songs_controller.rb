class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        this_one
        # @artist = Artist.find(params[:artist_id])
        # @genre = Genre.find(params[:genre_id])
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        redirect_to song_path(@song)
    end

    def edit
        this_one
    end

    def update
        this_one
        @song.update(song_params)
        redirect_to song_path(@song)
    end








    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def this_one
        @song = Song.find(params[:id])
    end
end

