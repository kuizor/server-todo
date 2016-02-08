class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :null_session
  rescue_from ActionController::RoutingError, :with => :render_404
  private
  def render_404
    render json: {error: "Page Not Found"}
  end
end
