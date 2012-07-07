class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    case current_user.role
      when Role.super_admin then
        redirect_to :controller => 'school',:action=>'index'
      when Role.school_admin then
        redirect_to :controller =>'admission',:action=>'index'
    end
  end
end
