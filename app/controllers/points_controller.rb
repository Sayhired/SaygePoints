class PointsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @point_deltas = PointDelta.all
  end
  
  def new
    @point_delta = PointDelta.new
  end
  
  def create
    @delta = params[:point_delta]
    @point_delta = PointDelta.new(:amount => @delta[:amount],
      :reason => @delta[:reason])
    @from_user = current_user
    @to_user = User.find_by_name(params['to_user'])

    @point_type = PointType.find_by_name(params['point_type'])
    if @point_type.nil?
      @point_type = PointType.create(:name => params['point_type'])
    end
    
    if @from_user == @to_user
      redirect_to :back, :flash => { :error =>
        "You can't give yourself points. Nice try, though."
      }
    else
      @point_delta.from_user = @from_user
      @point_delta.to_user = @to_user
      @point_delta.point_type = @point_type
      if @point_delta.save
        @verb = ((@delta[:amount].to_i < 0) ? 'taken' : 'given')
        redirect_to root_path, :flash => { :success => "Points #{@verb}."}
      else
        render 'new'
      end
    end
  end
end
