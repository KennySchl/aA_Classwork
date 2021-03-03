class BandsController < ApplicationController

  def index
    @bands = Band.all 
    render :index
  end

  def create
    @band = Band.create(band_params)

    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    redirect_to bands_url
  end

  private

  def band_params
    params.require(:band).permit(:name, :description, :image_url)
  end

end
