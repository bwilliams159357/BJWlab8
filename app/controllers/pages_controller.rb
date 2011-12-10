class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  
  def cpanel
    if current_user.nil?
      redirect_to root_path
    else
      @title = "#{current_user.email} - Control Panel - Profile"
    end
  end
  
  def gpage
    @title = "Game Page"
  end
  
  def gamesearch
    if params["search"].nil?
      @search = params["search"]
    else
      @search = ""
    end
    @title = "Search"
  end
  
  def friends
    if current_user.nil?
      redirect_to root_path
    else
      @title = "#{current_user.email} - Control Panel - Friends List"
    end
  end
  
  def collections
    if current_user.nil?
      redirect_to root_path
    else
      @title = "#{current_user.email} - Control Panel - Collections"
    end
  end
end
