class Api::ImagesController < ApplicationController

  def index
      @images = Image.all.order(:id)
      search_term = params[:search]
      if search_term
        @images = Image.where("name LIKE ?", "%#{search_term}%")
      end

      render 'index_image.json.jbuilder'
  end

  def show
    @image = Image.find(params[:id])
    render 'show_image.json.jbuilder'
  end

  def create
    @image = Image.new(
    url: params[:url],
    )
    
    if @image.save
      #happy path
      render 'show_image.json.jbuilder'
    else
      #sad path
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
      @image.rl = params[:url] || @image.url
    
    
    if @image.save
      #happy path
      render 'show_image.json.jbuilder'
    else
      #sad path
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @image = Image.find_by(id: params["id"])
    @image.destroy
    render json: {message: "Image successfully destroyed"}
  end
end
