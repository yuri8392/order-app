class ApartmentsController < ApplicationController
  before_action :move_to_index
  
  def index
    @apartments = Apartment.all
  end

  private
  
  def a_params
    params.require(:apartment).permit(:title, :memo).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
