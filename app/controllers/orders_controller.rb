class OrdersController < ApplicationController
  before_action :move_to_index
  
  def index
    @orders = Order.all

  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
