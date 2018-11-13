class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart
  #helper_method gives other that directly/indirectly inherit from this ApplicationController

  def cart
    cart = session[:cart] || []
    session[:cart] = cart
  end
end
