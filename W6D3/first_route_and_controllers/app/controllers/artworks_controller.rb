class ArtworksController < ApplicationController

    def index
        # artworks = Artwork.all  
        # artwork_shares = ArtworkShare.all
        artworks = Artwork.find_by(artist_id: params[:user_id])
        artwork_shares = ArtworkShare.where(viewer_id: params[:user_id])
        render json: {
          artworks: artworks,
          artwork_shares: artwork_shares
        }
    end

    def create
        artwork = Artwork.new(artwork_params)
        if artwork.save
          render json: artwork
        else
          render json: artwork.errors.full_messages, status: 422
        end
      end

    def show
        artwork = Artwork.find_by(id: params[:id])
       if artwork
        render json: artwork
       else
        render plain: 'artwork not found.', status: 404
       end
    end

    def update
        artwork = Artwork.find_by(id: params[:id])
      if artwork.update(artwork_params)
        redirect_to artwork_url(artwork)
      else
        render json: artwork.errors.full_messages, status: 422
      end
       
    end

    def destroy
        artwork = Artwork.find_by(id: params[:id])
        artwork.destroy
        render json: artwork
    end

    private

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end
