# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub |sensitive parameters from your log
  filter_parameter_logging :password
  #before_filter :require_login
  def require_login
       if session[:user_id].nil?
           flash[:notice]='please login'
           redirect_to(new_session_path)
       end
  end
  
  def current_user
      @user= User.find(session[:user_id]) unless session[:user_id].nil?
  end
  
  def current_post
      @post= Post.find(params[:post_id]) unless params[:post_id].nil?
  end
  
  def require_active
     unless current_user.id.to_s==params[:id]
         flash[:notice]="please login"
         redirect_to new_session_path
     end
  end
  
  def require_admin
      flash[:notice]="you can't do it"
      redirect_to(new_session_path)
  end
end
