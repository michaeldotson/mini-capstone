class Api::SuppliersController < ApplicationController

  def index
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

  def show
    @supplier = Supplier.find(params[:id])
    render 'show_supplier.json.jbuilder'
  end

  def create
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

  def update
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

  def destroy
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy
    render json: {message: "Supplier successfully destroyed"}
  end
end
