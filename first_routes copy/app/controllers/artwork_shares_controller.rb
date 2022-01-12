class ArtworkSharesController < ApplicationController
    def create
        as = ArtworkShare.new(params.require(:artworkshare).permit(:artist_id, :artwork_id))
        if as #question for :artworkshare
            render json: as
        else
            render json: as.errors.full_messages, status: :unprocessable_entity 
        end
    end

    def destroy
        as = ArtworkShare.find(params[:id])
        if as
            as.destroy
            render json: as
        else
            render json: as.errors.full_messages, status: :unprocessable_entity
        end
    end
end