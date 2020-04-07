class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        this_one
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        this_one
    end

    def update
        this_one
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end








    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def this_one
        @artist = Artist.find(params[:id])
    end


end
