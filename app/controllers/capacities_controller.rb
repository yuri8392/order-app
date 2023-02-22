class CapacitiesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :move_to_index

  def index
    @capacities = Capacity.all
  end

  def new
    @capacity = Capacity.new
  end

  def create
    @capacity=Capacity.new(capacity_params)
    if @capacity.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  private
  def capacity_params
    params.require(:capacity).permit(:client_number, :client_name, :capacity, :remarks)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end
end
