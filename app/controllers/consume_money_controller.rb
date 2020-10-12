class ConsumeMoneyController < ApplicationController

  def index
    if user_signed_in?
      @elements = current_user.consumptions.all.order("created_at DESC")
      @nickname = current_user.nickname
      @limit = current_user.limit
    end
  end

  def create
    @consumption = Consumption.new
    Consumption.create(product: consume_params[:product],money: consume_params[:money], category_id: consume_params[:category_id], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def consume_params
    params.require(:consumption).permit(:product, :money, :category_id).merge(user_id: current_user.id)
  end


end
