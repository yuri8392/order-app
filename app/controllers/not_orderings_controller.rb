class NotOrderingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @not_orderings = NotOrdering.all
  end
end
