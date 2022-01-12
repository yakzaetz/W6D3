class ArtworksController < ApplicationController
    def index
        render json: Artwork.all
    end

    def show
        artwork = Artwork.find(params[:id])
        if artwork
            render json: artwork
        else
            render json: params
        end
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        artwork = Artwork.find(params[:id])
        if artwork
            artwork.update(artwork_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])
        if artwork
            artwork.destroy
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def artwork_params
        params.require(:artwork).permit(:artist_id, :title, :img_url)
    end

    
    # def lkasjdkl_params
    #     params.require(:artwork).permit( :title, :img_url)
    # end
end