class SessionController < ApplicationController

  def new
    render :new
  end

#session creation method
  def create
  	user = User.find_by(email: params[:email])
  	#checks the user's email in the form against those in the db and the encrypted version of the password against the hashed one

  	if user && user.authenticate(params[:params])
  		session[:user_id] = user.user_id
  		redirect_to '/safehouse'
  	else
  		render :new
  	end
  end


end