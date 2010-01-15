class SessionsController < ApplicationController
  def new
  end

  def create
      if request.post?
          if @user= User.authenticate(params[:email],params[:password])
             session[:user_id]= @user.id
              redirect_to(sections_path)
          else
              render :new
          end
      end
  end

  def destroy
      session[:user_id]=nil
      render :new
  end

end
