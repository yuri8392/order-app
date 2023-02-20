class CapacitiesController < ApplicationController
  def index
    @capacities = Capacity.all
  end
end
