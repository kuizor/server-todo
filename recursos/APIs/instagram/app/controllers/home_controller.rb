class HomeController < ApplicationController
  def index
  	@instagram = Instagram.user_recent_media("2869266403", {:count => 1})
  end
end
