class PointsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @point_deltas = PointDelta.all
  end
  
  def new
    @point_delta = PointDelta.new
  end
end
