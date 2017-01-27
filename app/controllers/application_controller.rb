class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_cart
    before_action :fetch_order

    def order_quantity
    @current_order.items.each do |item|
      @sum = 0
    order_quantity =  item.quantity
    @sum += item.quantity
  end
end

  private
    # Create new empty cart when new user visits
    def current_cart
      if session[:cart_id]
        cart = Cart.find_by(:id => session[:cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:cart_id] = nil
        end
      end

      if session[:cart_id] == nil
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end

    def fetch_order
        @current_order = Order.find_by(:id => session[:order_id]) if session[:order_id]

        session[:order_id] = nil unless @current_order.present?
      end

  end
