class Api::OrdersController < ApplicationController

  def index
    @orders = Order.all
    render 'index.json.jbuilder'
  end

 def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: order.product.price,
      # tax: order.tax,
      # total: order.total
    )

    if @order.save
      render json: {message: 'Order created successfully'}, status: :created
    # else
    #   render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

end
