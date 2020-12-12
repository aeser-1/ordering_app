class OrdersController < ApplicationController
   
    def index
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)

        if (@order.discount.nil? || @order.discount.zero? || @order.price < @order.discount)
            @order.payment = @order.price
        elsif  @order.price > @order.discount
            @order.payment = @order.price - @order.discount
        end
        if @order.save
            redirect_to orders_path
        end
    end

    def show
        @orders = Order.all
    end

    def order_params
        params.require(:order).permit(:custfirstname, :custlastname, :name, :category, :currency, :price, :discount, :payment)
    end    

end
