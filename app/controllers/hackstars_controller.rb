class HackstarsController < ApplicationController
  respond_to :json
  
  def index
  end
  
  def show
    @hackstar = Hackstar.find params[:id]
    respond_with @hackstar
  end
end
