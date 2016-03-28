class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def search
    @images = GiphyService.search(params[:q])
    @image = current_user.images.build if user_signed_in?
  end

  def create
    @image = current_user.images.build(image_params)
    if @image.save
      flash[:notice] = "Image successfully created!"
      redirect_to images_path
    else
      flash[:error] = "Image already saved. Please select a different one"
      redirect_to :back
    end
  end

  def tags
    @images = Image.tagged_with(params[:tag])
    render :index
  end

  protected
    def image_params
      params.require(:image).permit(:giphy_id, :tag_list)
    end

end
