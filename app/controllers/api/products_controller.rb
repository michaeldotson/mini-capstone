class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find_by(id: params["id"])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
    name: params["name"],
    price: params["price"],
    description: params["description"],
    image_url: params["image_url"]
    
    )
    
    if @product.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    
    if @product.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: {message: "Product successfully destroyed"}
  end

end
