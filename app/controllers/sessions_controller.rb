class SessionsController < ApplicationController
  def new
  end

  def create
    user=User.find_by(email: params[:session][:email].downcase)
    if user && user.password_digest== params[:session][:password]

      sign_in user
      redirect_to user

    else
      redirect_to :controller => 'static_pages', :action => "home"
    end

  end

  def destroy
  end

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.hash(remember_token))
    self.current_user = user
  end
end
