class PointsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @point_deltas = PointDelta.all
  end
end
