module ApplicationHelper
  def hackstars
    Hackstar.all
  end
  
  def associates
    Associate.all
  end
  
  def requests
    Request.all
  end
end
