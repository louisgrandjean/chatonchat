class OrdersController < ApplicationController

    def show
        @user = User.all
    end


    def create
        
        
         @order = Order.create(cart_item_id: @cart_item, user_id: current_user.id)
            @cart = CartItem.find_by(cart_id: current_user.id)
            @carts = CartItem.all

            
            @carts.each do |item|
                if current_user.id == @cart.cart_id
                item.destroy
                end 
            end
        
        redirect_to cart_path(current_user.id), notice: "good"
        
    end
end