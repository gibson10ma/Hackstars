module ApplicationHelper
  def hackstars
    Hackstar.all
  end
  
  def requests
    Request.all
  end
end
