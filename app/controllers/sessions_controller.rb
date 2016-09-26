class SessionsController < ApplicationController
  def new
    #login form
  end

  def create
    #actual login
    binding.pry
  end

  def destroy
    #logout
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end
