class SaygesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => User.all.map(&:name).to_json }
    end
  end
end
