class PhotosController < ApplicationController

  # GET /photos
  def index
    @photos = Photo.all.limit(20).reverse

    render json: @photos
  end


  # POST /photos
  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      render json: @photo, status: :created, location: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end



  private

    # Only allow a trusted parameter "white list" through.
    def photo_params
      params.require(:photo).permit(:pic)
    end
end
