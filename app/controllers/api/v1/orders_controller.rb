class Api::V1::OrdersController < ApiController

  before_action :auth_and_block

  def index
    @orders = Order.where(status: params[:status]).order(created_at: :desc)
  end

  def show
  end

  def create
    order = Order.new permit_params

    if order.save
      render "show"
    else
      render status: 411, json: { errors: order.errors.full_messages, message: order.errors.full_messages.to_sentence }
    end
  end

  def update

    if @order.update permit_params
      render "show"
    else
      render status: 411, json: { errors: order.errors.full_messages, message: order.errors.full_messages.to_sentence }
    end
    
  end

  def destroy
    @order.destroy
    render status: 200, json: { message: "Order deleted successfully" }
  end

  private

  def permit_params
    params.require(:order).permit()
  end

  def set_order
    @order = Order.find params[:id]
  end

end