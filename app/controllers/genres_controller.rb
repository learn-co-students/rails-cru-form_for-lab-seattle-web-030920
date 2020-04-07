class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        this_one
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    def edit
        this_one
    end

    def update
        this_one
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end








    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def this_one
        @genre = Genre.find(params[:id])
    end


end
