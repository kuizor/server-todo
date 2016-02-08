class ErrorsController < ApplicationController
  def routing
    render_404
  end
  def error_500
    render_500
    #render :status => 500, :formats => [:html], :layout => "Espere", :sub_layout => "left"
  end
end