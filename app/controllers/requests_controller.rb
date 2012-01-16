class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end
  
  def create
  end
  
  def new
    @request = Request.new
    @request.priority = 0
  end

end
