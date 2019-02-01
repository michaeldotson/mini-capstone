class Api::ProductsController < ApplicationController

before_action :authenticate_admin, except: [:index, :show]

  def index
      @products = Product.all.order(:id)

      search_term = params[:search]
      if search_term
        @products = Product.where("name ILIKE ?", "%#{search_term}%")
      end
      
      discount = params[:discount]
      if discount 
        @products = Product.where("price < ?", 50)
      end


      sort_term = params[:sort]
      sort_order = params[:sort_order]
      if sort_term == "price"
        if sort_order == "desc"
          @products = @products.order(price: :desc)
        else
          @products = @products.order(:price)
        end
      else
        @products = @products.order(:id)
      end

      if params[:category]
        category = Category.find_by(name: params[:category ])
        @products = category.products
        
      end

      render 'index.json.jbuilder'
    end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    supplier_id: params[:supplier_id]
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
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    
    
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
    render json: {message: "#{product.name} successfully destroyed"}
  end

  ##########################

  def index_supplier
      @suppliers = Supplier.all.order(:id)
      search_term = params[:search]
      if search_term
        @suppliers = Supplier.where("name LIKE ?", "%#{search_term}%")
      end
      discount = params[:discount]
      if discount 
        @suppliers = Supplier.where("price < ?", 50)
      end

      sort_term = params[:sort]
      sort_order = params[:sort_order]
      if sort_term == "price"
        if sort_order == "desc"
          @suppliers = @suppliers.order(price: :desc)
        else
          @suppliers = @suppliers.order(:price)
        end
      else
        @suppliers = @suppliers.order(:id)
      end
      render 'index_supplier.json.jbuilder'
    end

  def show_supplier
    @supplier = Supplier.find(params[:id])
    render 'show_supplier.json.jbuilder'
  end

  def create_supplier
    @supplier = Supplier.new(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number]
    )
    
    if @supplier.save
      #happy path
      render 'show_supplier.json.jbuilder'
    else
      #sad path
      render json: {errors: @supplier.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update_supplier
    @supplier = Supplier.find(params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.price = params[:price] || @supplier.price
    @supplier.image_url = params[:image_url] || @supplier.image_url
    @supplier.description = params[:description] || @supplier.description
    
    if @supplier.save
      #happy path
      render 'show_supplier.json.jbuilder'
    else
      #sad path
      render json: {errors: @supplier.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy_supplier
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy
    render json: {message: "Supplier successfully destroyed"}
  end

###########################################
def index_image
      @images = Image.all.order(:id)
      search_term = params[:search]
      if search_term
        @images = Image.where("name LIKE ?", "%#{search_term}%")
      end

      render 'index_image.json.jbuilder'
    end

  def show_image
    @image = Image.find(params[:id])
    render 'show_image.json.jbuilder'
  end

  def create_image
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

  def update_image
      @image.rl = params[:url] || @image.url
    
    
    if @image.save
      #happy path
      render 'show_image.json.jbuilder'
    else
      #sad path
      render json: {errors: @image.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy_supplier
    @image = Image.find_by(id: params["id"])
    @image.destroy
    render json: {message: "Image successfully destroyed"}
  end

end
