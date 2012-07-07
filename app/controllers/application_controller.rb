class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :setup_env

  def setup_env
    if current_user.nil?
      @menus= Array.new
    else
      if current_user.role == Role.super_admin
        @menus = Menu.main(current_user.role_id, 0 )
      else
        @menus = Menu.main(current_user.role_id, current_user.school_id )
      end
    end
  end
end
