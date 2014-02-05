class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

   def create
    @order = current_user.orders.new(params[:h_order])
#    @order.id_user = current_user.id
#    @order = HOrder.new
#    @order.save
   

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path , notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        @order.delete
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

def new
    @order = HOrder.new
    @orders = current_user.orders


    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @order }
    end
  end

def show
  @order = HOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @order }
    end
end

end