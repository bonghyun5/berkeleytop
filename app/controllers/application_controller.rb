class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :logged_in, :super_admin_authorize

  #before_filter :authorize
  
  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url
      end
    end
    
    def super_admin_authorize
      unless User.find_by_id(session[:user_id]).super_admin
        redirect_to member_index_url
      end
    end
    
    def logged_in
      if User.find_by_id(session[:user_id])
        return true
      else
        return false
      end
    end
    
end
