class Api::OrdersController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    @orders = current_user.orders
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

  if @order.save
    render 'show.json.jbuilder'
  else 
    render json: {errors: @order.errors.full_messages}, status: 422
 end

 def show
  order = Order.find(params[:id])
  render 'show.json.jbuilder' 
 end

end

