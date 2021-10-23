class OrdersController < ApplicationController
  def index
     #フォームオブジェクトのインスタンスを生成し、インスタンス変数に代入する
    @item = Item.find(params[:item_id]) #@item = 商品の情報
    @order_address = OrderAddress.new
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:post_number, :area_id, :city, :number, :building_name, :telephone_number).merge(user_id: current_user.id, item_id: params[:tweet_id])
  end

end
