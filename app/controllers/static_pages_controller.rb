class StaticPagesController < ApplicationController

	def contact
	end

  def home
  	if logged_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def help
  end

  def about
  end
end
