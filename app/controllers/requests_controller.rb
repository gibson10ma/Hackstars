class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end
  
  def create
    @request = Request.new(params[:request])
    if @request.save 
      redirect_to requests_path
    else
      redirect_to render action: "new"
    end
  end
  
  def new
    @request = Request.new
    @request.priority = 0
  end

end
