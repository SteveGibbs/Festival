class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @cart = @current_cart
  end

  def create
      items = @current_cart.items
      @order = Order.new
      items.each do |item|
        @order.items << item
        item.cart_id = nil
      end

      if @order.save
        session[:order_id] = @order.id
      end
      redirect_to orders_path
    end

    def edit
      @order = Order.find(params[:id])
    end

    def show
      @order = Order.find(params[:id])
      @cart = @current_cart
    end

    def update
      @order = Order.find(params[:id])
      @order.update(order_params)
      @order.save
      redirect_to orders_path
    end

    def destroy
      @order = Order.find(params[:id])
      @order.destroy
      redirect_to orders_path
    end

    private

    def order_params
      params.require(:order).permit(:name, :address1, :status)
    end


end
