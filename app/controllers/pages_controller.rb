class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  
  def cpanel
    @title = "Control Panel"
  end
  
  def gpage
    @title = "Game Page"
  end
  
  def pagesearch
    @title = "Search"
  end
end
