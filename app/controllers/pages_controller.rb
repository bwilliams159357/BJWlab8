class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  
  def cpanel
    @title = "Control Panel - Profile"
  end
  
  def gpage
    @title = "Game Page"
  end
  
  def pagesearch
    @title = "Search"
  end
  
  def friends
    @title = "Control Panel - Friends List"
  end
  
  def collections
    @title = "Control Panel - Collections"
  end
end
