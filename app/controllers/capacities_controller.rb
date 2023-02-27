class CapacitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @capacities = Capacity.all
  end

  def new
    @capacity = Capacity.new
  end

  def create
    @capacity=Capacity.new(capacity_params)
    if @capacity.save
      return redirect_to capacities_path
    else
      render "new"
    end
  end

  private
  def capacity_params
    params.require(:capacity).permit(:client_number, :client_name, :capacity, :remarks)
  end
end
