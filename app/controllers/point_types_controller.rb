class PointTypesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render :json => PointType.all.map(&:name).to_json }
    end
  end
end
