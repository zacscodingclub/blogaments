class SessionsController < ApplicationController
  def new
    #login form
  end

  def create
    #actual login
    @user = User.find_by(email: session_params[:email].downcase)

    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      flash[:success] = @user.username + " has successfully logged in."
      redirect_to articles_path
    else
      flash.now[:danger] = "Could not log you in.  Please try again."
      render :new
    end
  end

  def destroy
    session.clear
    flash[:success] = "You have logged out."
    redirect_to root_path
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
