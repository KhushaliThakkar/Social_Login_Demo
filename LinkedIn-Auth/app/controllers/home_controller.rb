class HomeController < ApplicationController

  def show

    @user = User.find(params[:id])
    #@posts = @user.posts.paginate(page: params[:page])
  end

  def index
    if user_signed_in?
      # @post  = current_user.posts.build if user_signed_in?
      # @feed_items = current_user.feed
    end
  end
end
