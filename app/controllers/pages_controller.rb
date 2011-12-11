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
    @title = "Search"
  end
  
  def friends
    if current_user.nil?
      redirect_to root_path
    else
      if !params[:param1].nil? || !params[:remove].nil?
        if !params[:param1].nil?
          @friend = User.find_by_email(params[:param1])
          if @friend.nil?
            redirect_to friends_path
          else
            @check = Friends.find_by_friend_id(@friend.id)
            if @check.nil?
              @new = Friends.new(:user_id => current_user.id, :friend_id => @friend.id) unless @friends.id == current_user.id
              @new.save unless @friends.id == current_user.id
            end
            redirect_to friends_path
          end
        else
          @rem = Friends.find(:all, :conditions => ['user_id LIKE ? AND friend_id LIKE ?', current_user.id, params[:remove]])
          @rem[0].destroy
          redirect_to friends_path
        end
      else
        @title = "#{current_user.email} - Control Panel - Friends List"
      end
    end
  end
  
  def collections
    if current_user.nil?
      redirect_to root_path
    else
      if params[:param1].nil? && params[:remove].nil?
        @title = "#{current_user.email} - Control Panel - Collections"
      else 
        if params[:remove].nil?
          @game = Game.find_by_id(params[:param1])
          @new = Collections.new(:user_id => current_user.id, :game_id => @game.id, :name => @game.name)
          @new.save
          redirect_to search_path(:q => params[:q])
        else
          
        end
      end
    end
  end
end
