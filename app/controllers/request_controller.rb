class RequestController < ApplicationController
  def list
    @request = Request.find params[:id]
    respond_with @request
  end
  
  def create
  end
  
  def new
    @request = Request.new
    @request.priority = 0
  end

end
