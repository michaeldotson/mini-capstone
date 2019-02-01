class Api::OrdersController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    @orders = Order.all.order(:id)
    render 'index.json.jbuilder'
  end

  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09
    total = subtotal + tax

    product = Product.find(params[:product_id])
     @order = Order.new(
       user_id: current_user.id,
       product_id: params[:product_id],
       quantity: params[:quantity],
       subtotal: subtotal,
       tax: tax,
       total: total
       )

    @order.save
      render 'show.json.jbuilder'
    
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder' 
  end

  def update
    @order = Order.find(params[:id])
    @order.quantity = params[:quantity] || @order.quantity
    @order.subtotal = params[:subtotal] || @order.subtotal
    @order.tax = params[:tax] || @order.tax
    
    
    if @order.save
      #happy path
      render 'show.json.jbuilder'
    else
      #sad path
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end 
  end

end

