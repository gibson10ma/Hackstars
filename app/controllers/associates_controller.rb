class AssociatesController < ApplicationController
  respond_to :html
  
  def show
    @associate = Associate.find params[:id]
    respond_with @associate
  end
end