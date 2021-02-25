class ArtworkSharesController < ApplicationController

  #show and update
  #get, patch/put
  #user_id to our index action to filter
  
#   def index
#     artworks = ArtworkShare.all 
#     render json: artworks
# end

  def create
    artwork_share = ArtworkShare.new(artwork_share_params)
    if ArtworkShare.find_by(artwork_share_params)
      render plain: 'Share already exists', status: 422
    else
      if artwork_share.save
        render json: artwork_share
    else
      render json: artwork_share.errors.full_messages, status: 422
    end
    end
  end

  def destroy
    artwork_share = ArtworkShare.find_by(id: params[:id])
    artwork_share.destroy
    render json: artwork_share
end

  private

  def artwork_share_params
      params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end

end
